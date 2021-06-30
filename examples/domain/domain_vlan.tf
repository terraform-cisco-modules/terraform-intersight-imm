#____________________________________________________________
#
# Example Intersight VLAN Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

# Adding the Native VLAN
module "vlan_example_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.multicast_example,
    module.vlan_policy_example
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/domain_vlan"
  is_native        = true
  multicast_moid   = [module.multicast_example.moid]
  vlan_list        = [1]
  vlan_list_type   = "list"
  vlan_policy_moid = module.vlan_policy_example.moid
  vlan_prefix      = "example"
}

/*
This example shows how to add VLANs as a range.
Note: I want to add 2-100 but with ranges the stop needs to be one above the range of what I want.
*/

module "vlan_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.multicast_example,
    module.vlan_policy_example
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/domain_vlan"
  multicast_moid   = [module.multicast_example.moid]
  vlan_list_type   = "range"
  vlan_range_start = 2
  vlan_range_stop  = 101
  vlan_policy_moid = module.vlan_policy_example.moid
  vlan_prefix      = "example"
}

# This example shows how to add VLANs as a List
module "vlan_example_3" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.multicast_example,
    module.vlan_policy_example
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/domain_vlan"
  multicast_moid   = [module.multicast_example.moid]
  vlan_list        = [101, 105, 110, 115]
  vlan_list_type   = "list"
  vlan_policy_moid = module.vlan_policy_example.moid
  vlan_prefix      = "example"
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vlan_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/domain_vlan"
  auto_allow_on_uplinks = true
  is_native             = false
  multicast_moid        = [ module.multicast_example.moid ]
  name_prefix           = "vlan"
  vlan_list             = [1, 2]
  vlan_list_type        = "list"
  vlan_range_start      = 1
  vlan_range_stop       = 2
  vlan_policy_moid      = module.vlan_policy_example.moid
}

*/
