#__________________________________________________________________
#
# Intersight SMTP Policy
# GUI Location: Policies > Create Policy > SMTP
#__________________________________________________________________

resource "intersight_smtp_policy" "smtp" {
  description     = var.description
  enabled         = var.enabled
  min_severity    = var.min_severity
  name            = var.name
  sender_email    = var.sender_email == "" ? var.smtp_server : var.sender_email
  smtp_port       = var.smtp_port
  smtp_recipients = var.smtp_recipients
  smtp_server     = var.smtp_server
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
