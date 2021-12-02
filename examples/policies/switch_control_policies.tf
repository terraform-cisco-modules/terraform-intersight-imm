#____________________________________________________________
#
# Example Intersight Switch Control Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "switch_control_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ucs_domain_profile_a_example,
    module.ucs_domain_profile_b_example
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/switch_control_policies"
  description          = "Switch Control Policy Example."
  name                 = "example"
  mac_aging_option     = "Custom"
  mac_aging_time       = 1200
  udld_recovery_action = "reset"
  vlan_optimization    = true
  org_moid             = local.org_moid
  tags                 = var.tags
  profiles = [
    module.ucs_domain_profile_a_example.moid,
    module.ucs_domain_profile_b_example.moid
  ]
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "switch_control_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/switch_control_policies"
  description           = ""
  name                  = "switch_control"
  mac_aging_option      = "Default"
  mac_aging_time        = 120
  udld_message_interval = 15
  udld_recovery_action  = "none"
  vlan_optimization     = false
  org_moid              = local.org_moid
  profiles = []
  tags = var.tags
}

*/
