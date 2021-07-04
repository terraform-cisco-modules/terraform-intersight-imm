#____________________________________________________________
#
# Intersight Fabric VLAN Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

locals {
  vlan_list = var.vlan_list_type == "range" ? [for s in range(var.vlan_range_start, var.vlan_range_stop) : tonumber(s)] : var.vlan_list
}

resource "intersight_fabric_vlan" "vlan" {
  for_each              = local.vlan_list
  auto_allow_on_uplinks = var.auto_allow_on_uplinks
  is_native             = var.is_native
  name = length(regexall("^[0-9]{4}$", each.value)) > 0 ? join(
    "-vl", [var.vlan_prefix, each.value]) : length(regexall("^[0-9]{3}$", each.value)) > 0 ? join(
    "-vl0", [var.vlan_prefix, each.value]) : length(regexall("^[0-9]{2}$", each.value)) > 0 ? join(
  "-vl00", [var.vlan_prefix, each.value]) : join("-vl000", [var.vlan_prefix, each.value])
  vlan_id = each.value
  dynamic "multicast_policy" {
    for_each = var.multicast_moid
    content {
      moid = multicast_policy.value
    }
  }
  eth_network_policy {
    moid = var.vlan_policy_moid
  }
}
