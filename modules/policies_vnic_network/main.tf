#____________________________________________________________
#
# This Policy is for Standalone UCS Servers
# Intersight Ethernet Network Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_eth_network_policy" "vnic_policy" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  vlan_settings {
    default_vlan = var.default_vlan
    mode         = var.mode
    object_type  = "vnic.VlanSettings"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
