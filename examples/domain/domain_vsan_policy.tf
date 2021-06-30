#____________________________________________________________
#
# Example Intersight VLAN Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "vsan_policy_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "../../modules/domain_vsan_policy"
  description = "Fabric A VSAN Policy Example."
  name        = "example_fabric_a"
  org_moid    = local.org_moid
  profiles = [
    {
      moid        = module.switch_profile_example_a.moid
      object_type = "fabric.SwitchProfile"
    }
  ]
  tags = var.tags
}

module "vsan_policy_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "../../modules/domain_vsan_policy"
  description = "Fabric B VSAN Policy Example."
  name        = "example_fabric_b"
  org_moid    = local.org_moid
  profiles = [
    {
      moid        = module.switch_profile_example_b.moid
      object_type = "fabric.SwitchProfile"
    }
  ]
  tags = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vsan_policy_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "../../modules/domain_vsan_policy"
  description     = ""
  enable_trunking = false
  name            = "vsan_policy"
  org_moid        = local.org_moid
  profiles        = var.profiles
  tags            = var.tags
}

*/
