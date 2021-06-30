#____________________________________________________________
#
# Intersight UCS Domain SAN Port Channel Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_fc_uplink_pc_role" "port_channel" {
  admin_speed = var.san_uplink_speed
  pc_id       = var.san_uplink_pc_id
  vsan_id     = var.vsan_id
  dynamic "port_policy" {
    for_each = var.port_policy_moid
    content {
      moid = port_policy.value.moid
    }
  }
  dynamic "ports" {
    for_each = var.san_uplink_pc_ports
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
