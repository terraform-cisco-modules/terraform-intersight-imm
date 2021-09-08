#__________________________________________________________________
#
# Intersight LAN Connectivity Policy
# GUI Location: Policies > Create Policy > LAN Connectivity
#__________________________________________________________________

resource "intersight_vnic_lan_connectivity_policy" "lan_connectivity" {
  description         = var.description
  azure_qos_enabled   = var.enable_azure_stack_host_qos
  iqn_allocation_type = var.iqn_allocation_type
  name                = var.name
  placement_mode      = var.vnic_placement_mode
  static_iqn_name     = var.iqn_static_identifier
  target_platform     = var.target_platform
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "iqn_pool" {
    for_each = var.iqn_pool
    content {
      moid = iqn_pool.value
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
