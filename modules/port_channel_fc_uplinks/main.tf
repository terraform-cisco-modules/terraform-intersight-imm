#________________________________________________________________________________________________________________
#
# Intersight Port Policy - FC Uplink Port Channel
# GUI Location: Policies > Create Policy > Port > Port Channels > Create a Port Channel > FC Uplink Port Channel
#________________________________________________________________________________________________________________

resource "intersight_fabric_fc_uplink_pc_role" "port_channel" {
  admin_speed = var.admin_speed
  pc_id       = var.pc_id
  vsan_id     = var.vsan_id
  port_policy {
    moid = var.port_policy_moid
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
