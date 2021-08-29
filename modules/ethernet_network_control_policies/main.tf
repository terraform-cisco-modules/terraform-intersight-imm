#__________________________________________________________________
#
# Intersight Ethernet Network Control Policy
# GUI Location: Policies > Create Policy > Ethernet Network Control
#__________________________________________________________________

resource "intersight_fabric_eth_network_control_policy" "vnic_control" {
  cdp_enabled           = var.cdp_enabled
  description           = var.description
  forge_mac             = var.forge_mac
  mac_registration_mode = var.mac_registration_mode
  name                  = var.name
  uplink_fail_action    = var.uplink_fail_action
  lldp_settings {
    object_type      = "fabric.LldpSettings"
    receive_enabled  = var.lldp_receive
    transmit_enabled = var.lldp_transmit
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
