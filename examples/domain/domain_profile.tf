#____________________________________________________________
#
# Example Intersight UCS Domain Profile Module
# GUI Location: Profiles > UCS Domain Profile > Create UCS Domain Profile
#____________________________________________________________

#______________________________________________
#
# Example UCS Domain Profile
#______________________________________________

module "domain_profile_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/domain_profile_cluster"
  description = "UCS Domain Profile Cluster Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Examples of UCS Domain Profile Switch
#______________________________________________

module "domain_profile_a_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    data.terraform_remote_state.pools,
    module.domain_profile_example,
    module.port_policy_example_a
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/domain_profile_switch"
  assigned_switch = []
  cluster_moid    = module.domain_profile_example.moid
  description     = "UCS Domain Profile Switch A Example."
  name            = "example_a"
  switch_action   = "No-op"
  switch_type     = "instance"
  tags            = var.tags
}

module "domain_profile_b_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    data.terraform_remote_state.pools,
    module.domain_profile_example,
    module.port_policy_example_b
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/domain_profile_switch"
  assigned_switch = []
  cluster_moid    = module.domain_profile_example.moid
  description     = "UCS Domain Profile Switch B Example."
  name            = "example_b"
  switch_action   = "No-op"
  switch_type     = "instance"
  tags            = var.tags
}


#______________________________________________
#
# UCS Domain Profile Cluster Default Values
#______________________________________________

/*

module "domain_profile_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/domain_profile_cluster"
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

module "domain_profile_switch_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/domain_profile_switch"
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
