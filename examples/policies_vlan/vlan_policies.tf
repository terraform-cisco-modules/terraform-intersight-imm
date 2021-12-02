#____________________________________________________________
#
# Example Intersight VLAN Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "vlan_policy_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ucs_domain_profile_a_example,
    module.ucs_domain_profile_b_example
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/vlan_policies"
  description = "VLAN Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles = [
    module.ucs_domain_profile_a_example.moid,
    module.ucs_domain_profile_b_example.moid
  ]
  tags = var.tags
}


#______________________________________________
#
# VLAN Examples
#______________________________________________

# Adding a single VLAN (Native VLAN in this Example)
module "vlan_example_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.multicast_example,
    module.vlan_policy_example
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan"
  is_native        = true
  multicast_moid   = module.multicast_example.moid
  vlan             = "1"
  vlan_policy_moid = module.vlan_policy_example.moid
  vlan_prefix      = "example"
}

# Adding a List of VLANs Example
module "vlan_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.multicast_example,
    module.vlan_policy_example
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan_list"
  multicast_moid   = module.multicast_example.moid
  vlan_list        = "2-100,105,110,115"
  vlan_policy_moid = module.vlan_policy_example.moid
  vlan_prefix      = "example"
}


/*

#______________________________________________
#
# VLAN Policy with Default Values
#______________________________________________

module "vlan_policy_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/vlan_policies"
  description = ""
  name        = "vlan_policy"
  org_moid    = local.org_moid
  profiles    = var.profiles
  tags        = var.tags
}

#______________________________________________
#
# VLAN with Default Values
#______________________________________________

module "vlan_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan_list"
  auto_allow_on_uplinks = true
  is_native             = false
  multicast_moid        = **no default, required field**
  name_prefix           = "vlan"
  vlan_list             = "2-10,21-30"
  vlan_policy_moid      = **no default, required field**
}

*/
