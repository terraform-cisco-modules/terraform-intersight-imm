#____________________________________________________________
#
# Intersight LAN Uplink Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_uplink_role" "lan_uplink" {
  for_each          = var.lan_uplink_port_list
  admin_speed       = var.lan_uplink_speed
  aggregate_port_id = var.breakout_sw_port
  fec               = var.fec
  port_id           = each.value
  slot_id           = var.slot_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "flow_control_policy" {
    for_each = var.flow_control_moid
    content {
      moid = flow_control_policy.value
    }
  }
  dynamic "link_control_policy" {
    for_each = var.link_control_moid
    content {
      moid = link_control_policy.value
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
