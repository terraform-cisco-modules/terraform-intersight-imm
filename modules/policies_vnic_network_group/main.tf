locals {
  #  vlan_list = var.list_type == "range" ? [for s in range(var.vlan_start,var.vlan_stop): tonumber(s)] : var.vlan_list
  vlan_stop = var.list_type == "range" ? var.vlan_stop - 1 : null
  vlan_list = var.list_type == "range" ? "${var.vlan_start}-${local.vlan_stop}" : join(",", var.vlan_list)
}

#____________________________________________________________
#
# Intersight Ethernet Network Group (VLAN Group) Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_eth_network_group_policy" "vlan_group" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  vlan_settings {
    native_vlan   = var.native_vlan
    allowed_vlans = local.vlan_list
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
