#____________________________________________________________
#
# Example Intersight LAN Uplink Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "lan_uplink_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_control_example,
    module.port_policy_example_a
  ]
  source               = "../../modules/domain_uplink_lan"
  flow_control_moid    = [module.flow_control_example.moid]
  lan_uplink_port_list = [98, 100]
  link_control_moid    = [module.link_control_example.moid]
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  tags = var.tags
}

module "lan_uplink_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_control_example,
    module.port_policy_example_b
  ]
  source               = "../../modules/domain_uplink_lan"
  flow_control_moid    = [module.flow_control_example.moid]
  lan_uplink_port_list = [98, 100]
  link_control_moid    = [module.link_control_example.moid]
  port_policy_moid = [
    {
      moid = module.port_policy_example_b.moid
    }
  ]
  tags = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "lan_uplink_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "../../modules/domain_uplink_lan"
  breakout_sw_port      = 0
  fec                   = "Auto"
  flow_control_moid     = ""
  lan_uplink_port_list  = []
  lan_uplink_speed      = "Auto"
  link_control_moid     = ""
  port_policy_moid      = ""
  slot_id               = 1
  tags                  = var.tags
}

*/
