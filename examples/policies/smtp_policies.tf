#____________________________________________________________
#
# Example Intersight SMTP Policy Module
# GUI Location: Policies > Create Policy > SMTP
#____________________________________________________________

module "smtp_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/smtp_policies"
  description     = "SMTP Policy Example."
  name            = "example"
  org_moid        = local.org_moid
  profiles        = []
  sender_email    = "admin@example.com"
  smtp_recipients = ["server_admins@example.com"]
  smtp_server     = "smtp-relay.example.com"
  tags            = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "smtp_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/smtp_policies"
  description     = ""
  enabled         = true
  min_severity    = "critical"
  name            = "smtp"
  org_moid        = local.org_moid
  profiles        = []
  sender_email    = ""
  smtp_port       = 25
  smtp_recipients = []
  smtp_server     = ** no default, required attribute**
  tags            = var.tags
}

*/
