#____________________________________________________________
#
# Intersight Fiber-Channel Pool Resource
# GUI Location: IP Pools > Create Pool
#____________________________________________________________

resource "intersight_fcpool_pool" "fc_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  pool_purpose     = var.pool_purpose
  dynamic "id_blocks" {
    for_each = var.id_blocks
    content {
      object_type = "fcpool.Block"
      from        = id_blocks.value.from
      size        = id_blocks.value.size != null ? id_blocks.value.size : null
      to          = id_blocks.value.to != null ? id_blocks.value.to : null
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
