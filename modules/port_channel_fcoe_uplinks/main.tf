#______________________________________________________________________________________________________________________
#
# Intersight Port Policy - FCoE Uplink Port Channel
# GUI Location: Policies > Create Policy > Port > Port Channels > Create a Port Channel > FCoE Uplink Port Channel
#______________________________________________________________________________________________________________________

resource "intersight_fabric_fcoe_uplink_pc_role" "port_channel" {
  admin_speed = var.admin_speed
  pc_id       = var.pc_id
  port_policy {
    moid = var.port_policy_moid
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
    for_each = var.interfaces
    content {
      aggregate_port_id = ports.value.breakout_port_id
      port_id           = ports.value.port_id
      slot_id           = ports.value.slot_id
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
