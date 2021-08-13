#____________________________________________________________
#
# Intersight UCS Chassis Profile Resource
# GUI Location: Profiles > UCS Chassis Profile > Create
#____________________________________________________________

resource "intersight_chassis_profile" "chassis_profile" {
  action              = var.action
  description         = var.description
  name                = var.name
  target_platform     = var.target_platform
  type                = var.type
  wait_for_completion = var.wait_for_completion
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "assigned_chassis" {
    for_each = var.assigned_chassis
    content {
      moid        = assigned_chassis.value.moid
      object_type = assigned_chassis.value.object_type
    }
  }
  dynamic "policy_bucket" {
    for_each = var.policy_bucket
    content {
      moid        = policy_bucket.value.moid
      object_type = policy_bucket.value.object_type
    }
  }
  dynamic "src_template" {
    for_each = var.src_template
    content {
      moid = src_template.value
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
