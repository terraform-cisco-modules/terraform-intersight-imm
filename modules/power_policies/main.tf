#__________________________________________________________________
#
# Intersight Power Policy
# GUI Location: Policies > Create Policy > Power
#__________________________________________________________________

resource "intersight_power_policy" "power" {
  allocated_budget    = var.allocated_budget
  description         = var.description
  name                = var.name
  power_profiling     = var.power_profiling
  power_restore_state = var.power_restore_state
  redundancy_mode     = var.redundancy_mode
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
}
