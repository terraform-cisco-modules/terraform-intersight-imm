#____________________________________________________________
#
# Intersight LAN Connectivity Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_lan_connectivity_policy" "lan_connectivity" {
  description         = var.description
  iqn_allocation_type = var.iqn_allocation_type
  name                = var.name
  placement_mode      = var.placement_mode
  static_iqn_name     = var.iqn_static_name
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
      moid        = profiles.value
      object_type = "server.Profile"
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
