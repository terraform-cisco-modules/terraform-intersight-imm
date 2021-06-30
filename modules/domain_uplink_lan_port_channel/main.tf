#____________________________________________________________
#
# Intersight UCS Domain LAN Port Channel Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_uplink_pc_role" "port_channel" {
  admin_speed = var.lan_uplink_speed
  pc_id       = var.lan_uplink_pc_id
  dynamic "flow_control_policy" {
    for_each = var.flow_control_moid
    content {
      moid = flow_control_policy.value
    }
  }
  dynamic "link_aggregation_policy" {
    for_each = var.link_aggregation_moid
    content {
      moid = link_aggregation_policy.value
    }
  }
  dynamic "link_control_policy" {
    for_each = var.link_control_moid
    content {
      moid = link_control_policy.value
    }
  }
  dynamic "port_policy" {
    for_each = var.port_policy_moid
    content {
      moid = port_policy.value.moid
    }
  }
  dynamic "ports" {
    for_each = var.lan_uplink_pc_ports
    content {
      port_id           = ports.value
      aggregate_port_id = var.breakout_sw_port
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
