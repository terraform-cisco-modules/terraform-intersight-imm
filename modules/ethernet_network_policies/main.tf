#__________________________________________________________________
#
# Intersight Ethernet Network Policy
# GUI Location: Policies > Create Policy > Ethernet Network
#__________________________________________________________________

resource "intersight_vnic_eth_network_policy" "vnic_policy" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  vlan_settings {
    allowed_vlans = "" # CSCvx98712.  This is no longer valid for the policy
    default_vlan  = var.default_vlan
    mode          = var.vlan_mode
    object_type   = "vnic.VlanSettings"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
