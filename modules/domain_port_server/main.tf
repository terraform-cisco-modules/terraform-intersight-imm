#____________________________________________________________
#
# Intersight UCS Domain Server Port Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

locals {
  port_split = length(regexall("-", var.port_list)) > 0 ? tolist(split(",", var.port_list)) : tolist(var.port_list)
  port_lists = [for s in local.port_split : length(regexall("-", s)) > 0 ? [
    for v in range(tonumber(element(split("-", s), 0)), (tonumber(element(split("-", s), 1)) + 1)) : tonumber(v)] : [s]
  ]
  flattened_port_list = flatten(local.port_lists)
  port_list_set       = toset(local.flattened_port_list)
}

resource "intersight_fabric_server_role" "server_port" {
  for_each          = local.port_list_set
  aggregate_port_id = var.breakout_sw_port
  port_id           = each.value
  slot_id           = var.slot_id
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
