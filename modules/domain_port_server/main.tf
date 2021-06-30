#____________________________________________________________
#
# Intersight UCS Domain Server Port Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

locals {
  port_list = var.port_list_type == "range" ? [for s in range(var.port_start, var.port_stop) : tonumber(s)] : var.port_list
}

resource "intersight_fabric_server_role" "server_port" {
  for_each          = local.port_list
  aggregate_port_id = var.breakout_sw_port
  port_id           = each.value
  slot_id           = var.slot_id
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
