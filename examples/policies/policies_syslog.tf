#____________________________________________________________
#
# Example Intersight Syslog Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

# You can configure 1 or 2 remote syslog hosts
module "syslog_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/policies_syslog"
  description     = "Syslog Policy Example."
  name            = "example"
  org_moid        = local.org_moid
  profile_type    = "domain"
  syslog_severity = "warning"
  tags            = var.tags
  profiles = [
    {
      moid        = data.terraform_remote_state.domain.outputs.domain_profile_a_example.moid
      object_type = "fabric.SwitchProfile"
    },
    {
      moid        = data.terraform_remote_state.domain.outputs.domain_profile_b_example.moid
      object_type = "fabric.SwitchProfile"
    }
  ]
  remote_clients = [
    {
      enabled      = true
      hostname     = "remote-host1.example.com"
      port         = 514
      protocol     = "udp"
      min_severity = "warning"
    },
    {
      enabled      = true
      hostname     = "remote-host2.example.com"
      port         = 514
      protocol     = "udp"
      min_severity = "warning"
    }
  ]
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "syslog_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/policies_syslog"
  description     = ""
  name            = "syslog"
  org_moid        = local.org_moid
  profiles        = var.profiles
  profile_type    = "server"
  remote_clients  = []
  syslog_severity = "warning"
  tags            = var.tags
}

*/
