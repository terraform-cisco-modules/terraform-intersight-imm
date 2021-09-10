#______________________________________________________________________________________________________________________
#
# Intersight Port Policy - Ethernet Uplink Port Channel
# GUI Location: Policies > Create Policy > Port > Port Channels > Create a Port Channel > Ethernet Uplink Port Channel
#______________________________________________________________________________________________________________________

resource "intersight_fabric_uplink_pc_role" "port_channel" {
  admin_speed = var.admin_speed
  pc_id       = var.pc_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "flow_control_policy" {
    for_each = var.flow_control_policy_moid
    content {
      moid = flow_control_policy.value
    }
  }
  dynamic "link_aggregation_policy" {
    for_each = var.link_aggregation_policy_moid
    content {
      moid = link_aggregation_policy.value
    }
  }
  dynamic "link_control_policy" {
    for_each = var.link_control_policy_moid
    content {
      moid = link_control_policy.value
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
