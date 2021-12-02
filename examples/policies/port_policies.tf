#____________________________________________________________
#
# Example Intersight Port Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

#______________________________________________
#
# Port Policy Examples
#______________________________________________

module "port_policy_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version      = ">=0.9.6"
  source       = "terraform-cisco-modules/imm/intersight//modules/port_policies"
  description  = "Port Policy Example."
  device_model = "UCS-FI-64108"
  name         = "example_a"
  org_moid     = local.org_moid
  tags         = var.tags
  profiles     = {}
}

module "port_policy_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version      = ">=0.9.6"
  source       = "terraform-cisco-modules/imm/intersight//modules/port_policies"
  description  = "Port Policy Example."
  device_model = "UCS-FI-64108"
  name         = "example_b"
  org_moid     = local.org_moid
  tags         = var.tags
  profiles     = {}
}


#______________________________________________
#
# Port Mode Examples
#______________________________________________

module "port_mode_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_a
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/port_mode"
  custom_mode      = "FibreChannel"
  port_policy_moid = module.port_policy_example_a.moid
  tags             = var.tags
}

module "port_mode_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_b
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/port_mode"
  custom_mode      = "FibreChannel"
  port_policy_moid = module.port_policy_example_b.moid
  tags             = var.tags
}


#______________________________________________
#
# Server Port Examples
#______________________________________________

module "server_port_example_a1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_a
  ]
  source = "terraform-cisco-modules/imm/intersight//modules/port_server_ports"
  # Using the default port_list in this example of "5-18"
  port_policy_moid = module.port_policy_example_a.moid
  # Accepting the default slot id of 1
  tags = var.tags
}

module "server_port_example_a2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_a
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/port_server_ports"
  port_list        = "19-20,22-24"
  port_policy_moid = module.port_policy_example_a.moid
  tags             = var.tags
}

module "server_port_example_b1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_b
  ]
  source = "terraform-cisco-modules/imm/intersight//modules/port_server_ports"
  # Using the default port_list in this example of "5-18"
  port_policy_moid = module.port_policy_example_b.moid
  # Accepting the default slot id of 1
  tags = var.tags
}

module "server_port_example_b2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_b
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/port_server_ports"
  port_list        = "19-20,22-24"
  port_policy_moid = module.port_policy_example_b.moid
  tags             = var.tags
}


#______________________________________________
#
# LAN Uplink Port-Channel Examples
#______________________________________________

module "ethernet_uplink_port_channel_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_aggregation_example,
    module.link_control_example,
    module.port_policy_example_a
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink_port_channel"
  flow_control_moid     = [module.flow_control_example.moid]
  lan_uplink_pc_id      = 97
  lan_uplink_pc_ports   = [97, 98]
  link_aggregation_moid = [module.link_aggregation_example.moid]
  link_control_moid     = [module.link_control_example.moid]
  port_policy_moid      = module.port_policy_example_a.moid
  tags                  = var.tags
}

module "ethernet_uplink_port_channel_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_aggregation_example,
    module.link_control_example,
    module.port_policy_example_b
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink_port_channel"
  flow_control_moid     = [module.flow_control_example.moid]
  lan_uplink_pc_id      = 97
  lan_uplink_pc_ports   = [97, 98]
  link_aggregation_moid = [module.link_aggregation_example.moid]
  link_control_moid     = [module.link_control_example.moid]
  port_policy_moid      = module.port_policy_example_b.moid
  tags                  = var.tags
}


#______________________________________________
#
# LAN Uplink Examples
#______________________________________________

module "ethenret_uplink_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_control_example,
    module.port_policy_example_a
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink"
  flow_control_moid    = [module.flow_control_example.moid]
  lan_uplink_port_list = [99]
  link_control_moid    = [module.link_control_example.moid]
  port_policy_moid     = module.port_policy_example_a.moid
  tags                 = var.tags
}

module "ethernet_uplink_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.flow_control_example,
    module.link_control_example,
    module.port_policy_example_b
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink"
  flow_control_moid    = [module.flow_control_example.moid]
  lan_uplink_port_list = [99]
  link_control_moid    = [module.link_control_example.moid]
  port_policy_moid     = module.port_policy_example_b.moid
  tags                 = var.tags
}


#______________________________________________
#
# Fibre Channel Uplink Port-Channel Examples
#______________________________________________

module "fc_uplink_port_channel_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_a,
    module.port_policy_example_a
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/port_fc_uplink_port_channel"
  san_uplink_pc_id    = 1
  san_uplink_pc_ports = [1, 2]
  port_policy_moid    = module.port_policy_example_a.moid
  vsan_id             = 300
  tags                = var.tags
}

module "fc_uplink_port_channel_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_b,
    module.port_policy_example_b
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/port_fc_uplink_port_channel"
  san_uplink_pc_id    = 1
  san_uplink_pc_ports = [1, 2]
  port_policy_moid    = module.port_policy_example_b.moid
  vsan_id             = 400
  tags                = var.tags
}


#______________________________________________
#
# Fibre Channel Uplink Examples
#______________________________________________

module "fc_uplink_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_a,
    module.port_policy_example_a
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/port_fc_uplink"
  san_uplink_port_list = [3]
  port_policy_moid     = module.port_policy_example_a.moid
  vsan_id              = 500
  tags                 = var.tags
}

module "san_uplink_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_mode_example_b,
    module.port_policy_example_b
  ]
  source               = "terraform-cisco-modules/imm/intersight//modules/port_fc_uplink"
  san_uplink_port_list = [3]
  port_policy_moid     = module.port_policy_example_b.moid
  vsan_id              = 600
  tags                 = var.tags
}


#______________________________________________
#
# Port Policy with Default Values
#______________________________________________

/*

module "port_policy_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source       = "terraform-cisco-modules/imm/intersight//modules/port_policies"
  description  = ""
  device_model = "UCS-FI-6454"
  name         = "port_policy"
  org_moid     = local.org_moid
  profiles     = var.profiles
  tags         = var.tags
}


#______________________________________________
#
# Port Mode with Default Values
#______________________________________________

module "port_mode_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/port_mode"
  custom_mode      = FibreChannel
  port_id_end      = 4
  port_id_start    = 1
  port_policy_moid = ""
  slot_id          = 1
  tags             = var.tags
}


#______________________________________________
#
# Server Port with Default Values
#______________________________________________

module "server_port_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source            = "terraform-cisco-modules/imm/intersight//modules/port_server_ports"
  port_list         = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
  port_list_type    = "list"
  port_policy_moid  = ""
  port_start        = 5
  port_stop         = 18
  slot_id           = 1
  tags              = var.tags
}


#______________________________________________
#
# LAN Uplink Port Channel with Default Values
#______________________________________________

module "lan_uplink_port_channel_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink_port_channel"
  breakout_sw_port      = 0
  flow_control_moid     = []
  lan_uplink_pc_id      = 49
  lan_uplink_pc_ports   = [49, 50]
  lan_uplink_speed      = "Auto"
  link_aggregation_moid = []
  link_control_moid     = []
  port_policy_moid      = **no default, required field**
  slot_id               = 1
  tags                  = var.tags
}


#______________________________________________
#
# LAN_Uplink with Default Values
#______________________________________________

module "lan_uplink_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/port_ethernet_uplink"
  breakout_sw_port      = 0
  fec                   = "Auto"
  flow_control_moid     = []
  lan_uplink_port_list  = [49]
  lan_uplink_speed      = "Auto"
  link_control_moid     = []
  port_policy_moid      = **no default, required field**
  slot_id               = 1
  tags                  = var.tags
}

#______________________________________________
#
# SAN Uplink Port-Channel with Default Values
#______________________________________________

module "san_uplink_port_channel_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/port_fc_uplink_port_channel"
  breakout_sw_port    = 0
  fill_pattern        = "Idle"
  san_uplink_pc_id    = 1
  san_uplink_pc_ports = [1, 2]
  san_uplink_speed    = "16Gbps"
  port_policy_moid    = **no default, required field**
  slot_id             = 1
  tags                = var.tags
}

#______________________________________________
#
# SAN Uplink with Default Values
#______________________________________________

module "san_uplink_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/port_fc_uplink"
  breakout_sw_port      = 0
  fill_pattern          = var.fill_pattern
  san_uplink_port_list  = [1]
  san_uplink_speed      = "16Gbps"
  port_policy_moid      = **no default, required field**
  slot_id               = 1
  vsan_id               = 1
  tags                  = var.tags
}

*/
