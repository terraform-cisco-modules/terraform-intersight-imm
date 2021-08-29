#__________________________________________________________________
#
# Intersight VLAN Policy > Add VLANs
# GUI Location: Policies > Create Policy > VLAN Policy > Add VLANs
#__________________________________________________________________

resource "intersight_fabric_vlan" "vlan" {
  auto_allow_on_uplinks = var.auto_allow_on_uplinks
  is_native             = var.is_native
  name = length(regexall("^[0-9]{4}$", var.vlan)) > 0 ? join("-vl", [
    var.vlan_prefix, var.vlan
    ]) : length(regexall("^[0-9]{3}$", var.vlan)) > 0 ? join("-vl0", [
    var.vlan_prefix, var.vlan
    ]) : length(regexall("^[0-9]{2}$", var.vlan)) > 0 ? join("-vl00", [
    var.vlan_prefix, var.vlan
    ]) : join("-vl000", [
    var.vlan_prefix, var.vlan
    ]
  )
  vlan_id = var.vlan
  eth_network_policy {
    moid = var.vlan_policy_moid
  }
  multicast_policy {
    moid = var.multicast_moid
  }
}
