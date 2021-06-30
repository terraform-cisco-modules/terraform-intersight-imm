#____________________________________________________________
#
# Intersight Fabric VSAN Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

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
