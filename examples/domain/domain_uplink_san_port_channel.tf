#____________________________________________________________
#
# Example Intersight SAN Uplink Port-Channel Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "san_uplink_port_channel_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_a,
    module.port_policy_example_a
  ]
  source              = "../../modules/domain_uplink_san_port_channel"
  san_uplink_pc_id    = 1
  san_uplink_pc_ports = [1, 3]
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  vsan_id = 300
  tags    = var.tags
}

module "san_uplink_port_channel_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_b,
    module.port_policy_example_b
  ]
  source              = "../../modules/domain_uplink_san_port_channel"
  san_uplink_pc_id    = 1
  san_uplink_pc_ports = [1, 3]
  port_policy_moid = [
    {
      moid = module.port_policy_example_b.moid
    }
  ]
  vsan_id = 400
  tags    = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "san_uplink_port_channel_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "../../modules/domain_uplink_san_port_channel"
  breakout_sw_port    = 0
  fill_pattern        = var.fill_pattern
  san_uplink_pc_id    = 1
  san_uplink_pc_ports = [1, 2]
  san_uplink_speed    = "Auto"
  port_policy_moid    = ""
  slot_id             = 1
  tags                = var.tags
}

*/
