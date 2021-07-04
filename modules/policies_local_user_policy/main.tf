#____________________________________________________________
#
# Intersight Local User Password Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_iam_end_point_user_policy" "password_policy" {
  description = var.description
  name        = var.name
  password_properties {
    enable_password_expiry   = var.enable_password_expiry
    enforce_strong_password  = var.enforce_strong_password
    force_send_password      = var.force_send_password
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
      moid        = profiles.value
      object_type = "server.Profile"
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
