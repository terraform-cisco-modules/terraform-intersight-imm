#__________________________________________________________________
#
# Intersight VSAN Policy > Add VSAN
# GUI Location: Policies > Create Policy > VSAN > Add VSAN
#__________________________________________________________________

resource "intersight_fabric_vsan" "vsan" {
  for_each             = var.vsan_list
  default_zoning       = var.default_zoning
  fcoe_vlan            = each.value.fcoe_vlan
  fc_zone_sharing_mode = var.fc_zone_sharing_mode
  name                 = join("-vsan", [var.vsan_prefix, each.value.vsan_id])
  vsan_id              = each.value.vsan_id
  fc_network_policy {
    moid = var.vsan_policy_moid
  }
}
