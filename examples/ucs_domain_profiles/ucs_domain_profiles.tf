#____________________________________________________________
#
# Example Intersight UCS Domain Profile Module
# GUI Location: Profiles > UCS Domain Profile > Create UCS Domain Profile
#____________________________________________________________

#______________________________________________
#
# Example UCS Domain Profile
#______________________________________________

module "ucs_domain_profile_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/ucs_domain_profiles"
  description = "UCS Domain Profile Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Examples of UCS Domain Profile Switch
#______________________________________________

module "ucs_domain_profile_a_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ucs_domain_profile_example,
  ]
  version         = ">=0.9.6"
  source          = "terraform-cisco-modules/imm/intersight//modules/ucs_domain_switches"
  action          = "No-op"
  assigned_switch = []
  cluster_moid    = module.ucs_domain_profile_example.moid
  description     = "UCS Domain Profile Switch A Example."
  name            = "example_a"
  tags            = var.tags
}

module "ucs_domain_profile_b_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ucs_domain_profile_example,
    module.ucs_domain_profile_a_example
  ]
  version         = ">=0.9.6"
  source          = "terraform-cisco-modules/imm/intersight//modules/ucs_domain_switches"
  action          = "No-op"
  assigned_switch = []
  cluster_moid    = module.ucs_domain_profile_example.moid
  description     = "UCS Domain Profile Switch B Example."
  name            = "example_b"
  tags            = var.tags
}


#______________________________________________
#
# UCS Domain Profile Cluster Default Values
#______________________________________________

/*

module "ucs_domain_profile_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/profiles_ucs_domain"
  description = ""
  name        = "domain_profile"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# UCS Domain Profile Switch Default Values
#______________________________________________

/*

module "ucs_domain_profile_switch_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/profiles_ucs_switch"
  assigned_switch = []
  cluster_moid    = **no default, required field**
  description     = ""
  name            = "domain_profile_switch"
  policy_bucket   = []
  switch_action   = "No-op"
  switch_type     = "instance"
  tags            = var.tags
}

*/
