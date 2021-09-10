#________________________________________________________________________________________________
#
# Intersight Port Policy - Port Role - Appliance
# GUI Location: Policies > Create Policy > Port > Port Roles > Configure > Port Role - Appliance
#________________________________________________________________________________________________

resource "intersight_fabric_appliance_pc_role" "port_channel" {
  admin_speed       = var.admin_speed
  aggregate_port_id = var.breakout_port_id
  mode              = var.mode
  pc_id               = var.pc_id
  port_id           = each.value
  priority          = each.priority
  slot_id           = var.slot_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "eth_network_control_policy" {
    for_each = var.ethernet_network_control_policy_moid
    content {
      moid = eth_network_control_policy.value
    }
  }
  dynamic "eth_network_group_policy" {
    for_each = var.ethernet_network_group_policy_moid
    content {
      moid = eth_network_group_policy.value
    }
  }
  dynamic "ports" {
    for_each = var.port_list
    content {
      port_id           = ports.value
      aggregate_port_id = var.breakout_port_id
      slot_id           = var.slot_id
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
