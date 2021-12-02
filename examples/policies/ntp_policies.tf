#____________________________________________________________
#
# Example Intersight NTP Policy Module
# GUI Location: Policies > Create Policy > NTP
#____________________________________________________________

module "ntp_example" {
  depends_on = [
    module.ucs_domain_profile_a_example,
    module.ucs_domain_profile_b_example
  ]
  version      = ">=0.9.6"
  source       = "terraform-cisco-modules/imm/intersight//modules/ntp_policies"
  description  = "NTP Policy Example."
  name         = "example"
  ntp_servers  = var.ntp_servers
  org_moid     = local.org_moid
  profile_type = "domain"
  timezone     = var.timezone
  tags         = var.tags
  profiles     = {}
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "ntp_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                    = "terraform-cisco-modules/imm/intersight//modules/ntp_policies"
  description               = ""
  enabled                   = true
  name                      = "ntp"
  ntp_servers               = var.ntp_servers
  org_moid                  = local.org_moid
  authenticated_ntp_servers = []
  profile_type              = "server"
  profiles                  = var.profiles
  timezone                  = "Etc/GMT"
  tags                      = var.tags
}

*/
