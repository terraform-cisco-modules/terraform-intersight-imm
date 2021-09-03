#__________________________________________________________________
#
# Intersight Ethernet Network Group Policy
# GUI Location: Policies > Create Policy > Ethernet Network Group
#__________________________________________________________________

resource "intersight_fabric_eth_network_group_policy" "vlan_group" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  vlan_settings {
    native_vlan   = var.native_vlan
    allowed_vlans = var.allowed_vlans
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
