#____________________________________________________________
#
# Example Intersight SAN Uplink Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "san_uplink_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_a,
    module.port_policy_example_a
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_san"
  san_uplink_port_list = [4]
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  vsan_id = 500
  tags    = var.tags
}

module "san_uplink_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_b,
    module.port_policy_example_b
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_san"
  san_uplink_port_list = [4]
  port_policy_moid = [
    {
      moid = module.port_policy_example_b.moid
    }
  ]
  vsan_id = 600
  tags    = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "san_uplink_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_san"
  breakout_sw_port      = 0
  fill_pattern          = var.fill_pattern
  san_uplink_port_list  = []
  san_uplink_speed      = "Auto"
  port_policy_moid      = ""
  slot_id               = 1
  vsan_id               = 1
  tags                  = var.tags
}

*/
