#__________________________________________________________________
#
# Intersight Local User Policy
# GUI Location: Policies > Create Policy > Local User
#__________________________________________________________________

resource "intersight_iam_end_point_user_policy" "user_policy" {
  description = var.description
  name        = var.name
  password_properties {
    enable_password_expiry   = var.enable_password_expiry
    enforce_strong_password  = var.enforce_strong_password
    force_send_password      = var.always_send_user_password
    grace_period             = var.grace_period
    notification_period      = var.notification_period
    password_expiry_duration = var.password_expiry_duration
    password_history         = var.password_history
  }
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
