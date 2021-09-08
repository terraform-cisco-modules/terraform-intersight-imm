#__________________________________________________________________
#
# Intersight VLAN Policy > Add VLANs
# GUI Location: Policies > Create Policy > VLAN Policy > Add VLANs
#__________________________________________________________________

resource "intersight_fabric_vlan" "vlan" {
  auto_allow_on_uplinks = var.auto_allow_on_uplinks
  is_native             = var.native_vlan
  name                  = var.name
  vlan_id               = var.vlan_id
  eth_network_policy {
    moid = var.vlan_policy_moid
  }
  multicast_policy {
    moid = var.multicast_policy_moid
  }
}
