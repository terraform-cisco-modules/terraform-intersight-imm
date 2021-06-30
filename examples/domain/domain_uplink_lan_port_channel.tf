#____________________________________________________________
#
# Example Intersight LAN Uplink Port-Channel Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "lan_uplink_port_channel_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_aggregation_example,
    module.link_control_example,
    module.port_policy_example_a
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan_port_channel"
  flow_control_moid     = [module.flow_control_example.moid]
  lan_uplink_pc_id      = 97
  lan_uplink_pc_ports   = [97, 99]
  link_aggregation_moid = [module.link_aggregation_example.moid]
  link_control_moid     = [module.link_control_example.moid]
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  tags = var.tags
}

module "lan_uplink_port_channel_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_aggregation_example,
    module.link_control_example,
    module.port_policy_example_b
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan_port_channel"
  flow_control_moid     = [module.flow_control_example.moid]
  lan_uplink_pc_id      = 97
  lan_uplink_pc_ports   = [97, 99]
  link_aggregation_moid = [module.link_aggregation_example.moid]
  link_control_moid     = [module.link_control_example.moid]
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

module "lan_uplink_port_channel_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan_port_channel"
  breakout_sw_port    = 0
  fec                 = "Auto"
  flow_control_moid   = ""
  lan_uplink_pc_id    = 97
  lan_uplink_pc_ports = [97, 99]
  lan_uplink_speed    = "Auto"
  link_control_moid   = ""
  port_policy_moid    = ""
  slot_id             = 1
  tags                = var.tags
}

*/
