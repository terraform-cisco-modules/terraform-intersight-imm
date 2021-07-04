#____________________________________________________________
#
# Example Intersight NTP Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "ntp_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source       = "../../modules/policies_ntp"
  description  = "NTP Policy Example."
  name         = "example"
  ntp_servers  = var.ntp_servers
  org_moid     = local.org_moid
  profile_type = "domain"
  timezone     = var.timezone
  tags         = var.tags
  profiles = [
    data.terraform_remote_state.domain.outputs.domain_profile_a_example.moid,
    data.terraform_remote_state.domain.outputs.domain_profile_b_example.moid
  ]
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
  source                    = "terraform-cisco-modules/imm/intersight//modules/policies_ntp"
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
