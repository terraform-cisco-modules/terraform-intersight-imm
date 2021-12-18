#__________________________________________________________________
#
# Intersight VSAN Policy > Add VSAN
# GUI Location: Policies > Create Policy > VSAN > Add VSAN
#__________________________________________________________________

resource "intersight_fabric_vsan" "vsan" {
  default_zoning       = var.default_zoning
  fcoe_vlan            = var.fcoe_vlan_id
  fc_zone_sharing_mode = var.fc_zone_sharing_mode
  name                 = var.name
  vsan_id              = var.vsan_id
  vsan_scope           = var.vsan_scope
  fc_network_policy {
    moid = var.vsan_policy_moid
  }
}
