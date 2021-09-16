locals {
  vlan_split = length(
    regexall("-", var.vlan_list)) > 0 ? tolist(
    split(",", var.vlan_list)
  ) : length(regexall(",", var.vlan_list)) > 0 ? tolist(split(",", var.vlan_list)) : [var.vlan_list]
  vlan_lists = length(regexall("(,|-)", jsonencode(var.vlan_list))) > 0 ? flatten(
    [for s in local.vlan_split : length(regexall("-", s)) > 0 ? [
      for v in range(tonumber(element(split("-", s), 0)), (tonumber(element(split("-", s), 1)) + 1)) : tonumber(v)] : [s]
  ]) : local.vlan_split
  vlan_list = toset(local.vlan_lists)
}

#__________________________________________________________________
#
# Intersight VLAN Policy > Add VLANs
# GUI Location: Policies > Create Policy > VLAN Policy > Add VLANs
#__________________________________________________________________

resource "intersight_fabric_vlan" "vlan_list" {
  for_each              = local.vlan_list
  auto_allow_on_uplinks = var.auto_allow_on_uplinks
  is_native             = var.native_vlan
  name = length(
    regexall("^[0-9]+$", var.vlan_list)
    ) > 0 ? var.name : length(
    regexall("^[0-9]{4}$", each.value)
    ) > 0 ? join("-vl", [var.name, each.value]) : length(
    regexall("^[0-9]{3}$", each.value)
    ) > 0 ? join("-vl0", [var.name, each.value]) : length(
    regexall("^[0-9]{2}$", each.value)
    ) > 0 ? join("-vl00", [var.name, each.value]) : join(
    "-vl000", [var.name, each.value]
  )
  vlan_id = each.value
  eth_network_policy {
    moid = var.vlan_policy_moid
  }
  multicast_policy {
    moid = var.multicast_policy_moid
  }
}
