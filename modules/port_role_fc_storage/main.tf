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

#________________________________________________________________________
#
# Intersight Port Policy - FC Uplink
# GUI Location: Policies > Create Policy > Port > Port Roles > FC Uplink
#________________________________________________________________________

resource "intersight_fabric_fc_storage_role" "port_role" {
  for_each          = local.port_list
  admin_speed       = var.admin_speed
  aggregate_port_id = var.breakout_port_id
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
