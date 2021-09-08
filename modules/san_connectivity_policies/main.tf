#__________________________________________________________________
#
# Intersight SAN Connectivity Policy
# GUI Location: Policies > Create Policy > SAN Connectivity
#__________________________________________________________________

resource "intersight_vnic_san_connectivity_policy" "san_connectivity" {
  description         = var.description
  name                = var.name
  placement_mode      = var.vhba_placement_mode
  static_wwnn_address = var.wwnn_static_address
  target_platform     = var.target_platform
  wwnn_address_type   = var.wwnn_allocation_type
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
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
  dynamic "wwnn_pool" {
    for_each = var.wwnn_pool
    content {
      moid = wwnn_pool.value
    }
  }
}
