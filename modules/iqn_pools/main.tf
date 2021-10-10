#____________________________________________________________
#
# Intersight IQN Pool Resource
# GUI Location: Pools > Create Pool
#____________________________________________________________

resource "intersight_iqnpool_pool" "iqn_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  prefix           = var.prefix
  dynamic "iqn_suffix_blocks" {
    for_each = var.iqn_blocks
    content {
      from   = iqn_suffix_blocks.value.from
      suffix = iqn_suffix_blocks.value.suffix
      size   = iqn_suffix_blocks.value.size
      # to     = iqn_suffix_blocks.value.to
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
