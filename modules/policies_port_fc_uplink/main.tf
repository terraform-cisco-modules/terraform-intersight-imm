#________________________________________________________________________
#
# Intersight Port Policy - FC Uplink
# GUI Location: Policies > Create Policy > Port > Port Roles > FC Uplink
#________________________________________________________________________

resource "intersight_fabric_fc_uplink_role" "uplink" {
  for_each          = var.san_uplink_port_list
  admin_speed       = var.san_uplink_speed
  aggregate_port_id = var.breakout_sw_port
  fill_pattern      = var.fill_pattern
  port_id           = each.value
  slot_id           = var.slot_id
  vsan_id           = var.vsan_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
