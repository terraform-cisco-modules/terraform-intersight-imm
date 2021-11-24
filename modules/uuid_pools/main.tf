#____________________________________________________________
#
# Intersight UUID Pool Resource
# GUI Location: Pools > Create Pool
#____________________________________________________________

resource "intersight_uuidpool_pool" "uuid_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  prefix           = var.prefix
  dynamic "uuid_suffix_blocks" {
    for_each = var.uuid_blocks
    content {
      object_type = "uuidpool.UuidBlock"
      from        = uuid_suffix_blocks.value.from
      size        = uuid_suffix_blocks.value.size != null ? uuid_suffix_blocks.value.size : null
      to          = uuid_suffix_blocks.value.to != null ? uuid_suffix_blocks.value.to : null
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
