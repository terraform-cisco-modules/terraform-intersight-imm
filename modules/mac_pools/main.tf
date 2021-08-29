#____________________________________________________________
#
# Intersight MAC Pool Resource
# GUI Location: Pools > Create Pool
#____________________________________________________________

resource "intersight_macpool_pool" "mac_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  dynamic "mac_blocks" {
    for_each = var.mac_blocks
    content {
      object_type = "macpool.Block"
      from        = mac_blocks.value.from
      to          = mac_blocks.value.to
    }
  }
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
