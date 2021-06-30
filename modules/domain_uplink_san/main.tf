#____________________________________________________________
#
# Intersight SAN Uplink Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_fc_uplink_role" "san_uplink" {
  for_each          = var.san_uplink_port_list
  admin_speed       = var.san_uplink_speed
  aggregate_port_id = var.breakout_sw_port
  fill_pattern      = var.fill_pattern
  port_id           = each.value
  slot_id           = var.slot_id
  vsan_id           = var.vsan_id
  dynamic "port_policy" {
    for_each = var.port_policy_moid
    content {
      moid = port_policy.value.moid
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
