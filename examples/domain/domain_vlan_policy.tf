#____________________________________________________________
#
# Example Intersight VLAN Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "vlan_policy_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "../../modules/domain_vlan_policy"
  description = "VLAN Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles = [
    {
      moid        = module.switch_profile_example_a.moid
      object_type = "fabric.SwitchProfile"
    },
    {
      moid        = module.switch_profile_example_b.moid
      object_type = "fabric.SwitchProfile"
    },
  ]
  tags = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vlan_policy_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "../../modules/domain_vlan_policy"
  description = ""
  name        = "vlan_policy"
  org_moid    = local.org_moid
  profiles    = var.profiles
  tags        = var.tags
}

*/
