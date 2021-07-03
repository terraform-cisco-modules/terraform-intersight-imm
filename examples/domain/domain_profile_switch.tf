#____________________________________________________________
#
# Example Intersight UCS Domain Switch Profile Module
# GUI Location: Profiles > UCS Domain Profile > Create UCS Domain Profile
#____________________________________________________________

module "switch_profile_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    data.terraform_remote_state.pools,
    module.port_policy_example_a,
    module.switch_cluster_example
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/domain_profile_switch"
  description     = "Switch Profile Example."
  name            = "example_a"
  switch_action   = "No-op"
  switch_type     = "instance"
  tags            = var.tags
  assigned_switch = []
  cluster_moid    = [{ moid = module.switch_cluster_example.moid }]
  # policy_bucket   = [
  #   # {
  #   #   moid = data.terraform_remote_state.policies.outputs.dns_example_1.moid
  #   #   object_type = "fabric.EthNetworkPolicy"
  #   # },
  #   {
  #     moid = module.port_policy_example_a.moid
  #     object_type = "fabric.PortPolicy"
  #   },
  #   {
  #     moid = data.terraform_remote_state.policies.outputs.ntp_example.moid
  #     object_type = "ntp.Policy"
  #   }
  # ]
}

module "switch_profile_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    data.terraform_remote_state.pools,
    module.port_policy_example_b,
    module.switch_cluster_example
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/domain_profile_switch"
  description     = "Switch Profile Example."
  name            = "example_b"
  switch_action   = "No-op"
  switch_type     = "instance"
  tags            = var.tags
  assigned_switch = []
  cluster_moid    = [{ moid = module.switch_cluster_example.moid }]
  # policy_bucket   = [
  #   # {
  #   #   moid = data.terraform_remote_state.policies.outputs.dns_example_1.moid
  #   #   object_type = "fabric.EthNetworkPolicy"
  #   # },
  #   {
  #     moid = module.port_policy_example_b.moid
  #     object_type = "fabric.PortPolicy"
  #   },
  #   {
  #     moid = data.terraform_remote_state.policies.outputs.ntp_example.moid
  #     object_type = "ntp.Policy"
  #   }
  # ]
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
  source          = "terraform-cisco-modules/imm/intersight//modules/domain_profile_switch"
  description     = ""
  name            = "switch_profile"
  switch_action   = "No-op"
  switch_type     = "instance"
  tags            = var.tags
  assigned_switch = []
  cluster_moid    = []
}

*/
