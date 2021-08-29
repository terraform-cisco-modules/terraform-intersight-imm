#__________________________________________________________________
#
# Intersight Thermal Policy
# GUI Location: Policies > Create Policy > Thermal
#__________________________________________________________________

resource "intersight_thermal_policy" "thermal" {
  description      = var.description
  fan_control_mode = var.fan_control_mode
  name             = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
      object_type = "chassis.Profile"
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
