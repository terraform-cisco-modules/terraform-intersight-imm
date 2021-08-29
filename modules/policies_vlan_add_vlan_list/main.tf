#__________________________________________________________________
#
# Intersight VLAN Policy > Add VLANs
# GUI Location: Policies > Create Policy > VLAN Policy > Add VLANs
#__________________________________________________________________

locals {
  vlan_split = length(regexall("-", var.vlan_list)) > 0 ? tolist(
    split(",", var.vlan_list)
  ) : tolist(var.vlan_list)
  vlan_list = [for s in local.vlan_split : length(regexall("-", s)) > 0 ? [
    for v in range(
      tonumber(element(split("-", s), 0)),
      (tonumber(element(split("-", s), 1)
    ) + 1)) : tonumber(v)] : [s]
  ]
}

resource "intersight_fabric_vlan" "vlan_list" {
  for_each              = toset(flatten(local.vlan_list))
  auto_allow_on_uplinks = var.auto_allow_on_uplinks
  is_native             = var.is_native
  name = length(regexall("^[0-9]{4}$", each.value)) > 0 ? join("-vl", [
    var.vlan_prefix, each.value
    ]) : length(regexall("^[0-9]{3}$", each.value)) > 0 ? join("-vl0", [
    var.vlan_prefix, each.value
    ]) : length(regexall("^[0-9]{2}$", each.value)) > 0 ? join("-vl00", [
    var.vlan_prefix, each.value
    ]) : join("-vl000", [
    var.vlan_prefix, each.value
    ]
  )
  vlan_id = each.value
  eth_network_policy {
    moid = var.vlan_policy_moid
  }
  multicast_policy {
    moid = var.multicast_moid
  }
}