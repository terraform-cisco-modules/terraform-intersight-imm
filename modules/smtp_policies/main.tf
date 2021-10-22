#__________________________________________________________________
#
# Intersight SMTP Policy
# GUI Location: Policies > Create Policy > SMTP
#__________________________________________________________________

resource "intersight_smtp_policy" "smtp" {
  description     = var.description
  enabled         = var.enable_smtp
  min_severity    = var.minimum_severity
  name            = var.name
  sender_email    = var.smtp_alert_sender_address == "" ? var.smtp_server_address : var.smtp_alert_sender_address
  smtp_port       = var.smtp_port
  smtp_recipients = var.mail_alert_recipients
  smtp_server     = var.smtp_server_address
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
