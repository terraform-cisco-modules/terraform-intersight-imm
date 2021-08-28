#____________________________________________________________
#
# Intersight SAN Connectivity Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_san_connectivity_policy" "san_connectivity" {
  description         = var.description
  name                = var.name
  placement_mode      = var.placement_mode
  static_wwnn_address = var.static_wwnn_address
  target_platform     = var.target_platform
  wwnn_address_type   = var.wwnn_address_type
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
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
  dynamic "wwnn_pool" {
    for_each = var.wwnn_pool
    content {
      moid = wwnn_pool.value
    }
  }
}
