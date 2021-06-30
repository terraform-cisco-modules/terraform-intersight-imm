#____________________________________________________________
#
# Example Intersight NTP Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "ntp_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_ntp"
  description = "NTP Policy Example."
  name        = "example"
  ntp_servers = var.ntp_servers
  org_moid    = local.org_moid
  profiles = [
    {
      moid        = data.terraform_remote_state.domain.outputs.switch_profile_example_a.moid
      object_type = "fabric.SwitchProfile"
    },
    {
      moid        = data.terraform_remote_state.domain.outputs.switch_profile_example_b.moid
      object_type = "fabric.SwitchProfile"
    },
  ]
  timezone = var.timezone
  tags     = var.tags
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
  profiles                  = var.profiles
  timezone                  = "Etc/GMT"
  tags                      = var.tags
}

*/
