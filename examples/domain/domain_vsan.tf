#____________________________________________________________
#
# Example Intersight VLAN Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

# Adding the Native VLAN
module "vsan_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.vsan_policy_example_a
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/domain_vsan"
  vsan_policy_moid = module.vsan_policy_example_a.moid
  vsan_prefix      = "example-a"
  vsan_list = {
    vsan300 = {
      fcoe_vlan = 300,
      vsan_id   = 300
    }
    vsan500 = {
      fcoe_vlan = 500,
      vsan_id   = 500
    }
  }
}

/*
This example shows how to add VLANs as a range.
Note: I want to add 2-100 but with ranges the stop needs to be one above the range of what I want.
*/

module "vsan_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.vsan_policy_example_b
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/domain_vsan"
  vsan_policy_moid = module.vsan_policy_example_b.moid
  vsan_prefix      = "example-b"
  vsan_list = {
    vsan400 = {
      fcoe_vlan = 400,
      vsan_id   = 400
    }
    vsan600 = {
      fcoe_vlan = 600,
      vsan_id   = 600
    }
  }
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vsan_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/domain_vsan"
  default_zoning        = var.default_zoning
  fc_zone_sharing_mode  = var.fc_zone_sharing_mode
  name_prefix           = "vsan"
  vsan_list             = [1, 2]
  vsan_list_type        = "list"
  vsan_range_start      = 1
  vsan_range_stop       = 2
  vsan_policy_moid      = module.vsan_policy_example.moid
}

*/
