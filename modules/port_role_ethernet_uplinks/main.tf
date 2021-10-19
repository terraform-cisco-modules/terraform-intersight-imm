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

#__________________________________________________________________________________________
#
# Intersight Port Policy - Ethernet Uplink
# GUI Location: Policies > Create Policy > Port > Port Roles > Configure > Ethernet Uplink
#__________________________________________________________________________________________

resource "intersight_fabric_uplink_role" "port_role" {
  for_each          = local.port_list
  admin_speed       = var.admin_speed
  aggregate_port_id = var.breakout_port_id
  fec               = var.fec
  port_id           = each.value
  slot_id           = var.slot_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "eth_network_group_policy" {
    for_each = var.ethernet_network_group_policy_moid
    content {
      moid = eth_network_group_policy.value
    }
  }
  dynamic "flow_control_policy" {
    for_each = var.flow_control_policy_moid
    content {
      moid = flow_control_policy.value
    }
  }
  dynamic "link_control_policy" {
    for_each = var.link_control_policy_moid
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
