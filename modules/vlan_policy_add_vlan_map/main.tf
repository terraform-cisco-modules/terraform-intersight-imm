#__________________________________________________________________
#
# Intersight VLAN Policy > Add VLANs
# GUI Location: Policies > Create Policy > VLAN Policy > Add VLANs
#__________________________________________________________________

resource "intersight_fabric_vlan" "vlan_map" {
  for_each              = { for k, v in var.vlan_map : v.vlan_id => v }
  auto_allow_on_uplinks = var.auto_allow_on_uplinks
  is_native             = var.is_native
  name = length(regexall("^[0-9]{4}$", each.value.vlan_id)) > 0 ? join("-vl", [
    each.value.prefix, each.value.vlan_id
    ]) : length(regexall("^[0-9]{3}$", each.value.vlan_id)) > 0 ? join("-vl0", [
    each.value.prefix, each.value.vlan_id
    ]) : length(regexall("^[0-9]{2}$", each.value.vlan_id)) > 0 ? join("-vl00", [
    each.value.prefix, each.value.vlan_id
    ]) : join("-vl000", [
    each.value.prefix, each.value.vlan_id
    ]
  )
  vlan_id = each.value.vlan_id
  eth_network_policy {
    moid = var.vlan_policy_moid
  }
  multicast_policy {
    moid = var.multicast_moid
  }
}
