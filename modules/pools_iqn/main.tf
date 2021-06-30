#____________________________________________________________
#
# Intersight IQN Pool Resource
# GUI Location: Pools > Create Pool
#____________________________________________________________

resource "intersight_iqnpool_pool" "iqn_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  prefix           = var.iqn_prefix
  dynamic "iqn_suffix_blocks" {
    for_each = var.iqn_suffix_blocks
    content {
      from   = iqn_suffix_blocks.value.starting_iqn
      size   = iqn_suffix_blocks.value.pool_size
      suffix = iqn_suffix_blocks.value.suffix
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
