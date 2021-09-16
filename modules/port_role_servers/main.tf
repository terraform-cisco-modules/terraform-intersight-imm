locals {
  port_split = length(
    regexall("-", var.port_list)) > 0 ? tolist(
    split(",", var.port_list)
  ) : length(regexall(",", var.port_list)) > 0 ? tolist(split(",", var.port_list)) : [var.port_list]
  port_lists = length(regexall("(,|-)", jsonencode(var.port_list))) > 0 ? flatten(
    [for s in local.port_split : length(regexall("-", s)) > 0 ? [
      for v in range(tonumber(element(split("-", s), 0)), (tonumber(element(split("-", s), 1)) + 1)) : tonumber(v)] : [s]
  ]) : local.port_split
  port_list = toset(local.port_lists)
}

#_____________________________________________________________________
#
# Intersight Port Policy - Server Ports
# GUI Location: Policies > Create Policy > Port > Port Roles > Server
#_____________________________________________________________________

resource "intersight_fabric_server_role" "port_role" {
  for_each          = local.port_list
  aggregate_port_id = var.breakout_port_id
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
