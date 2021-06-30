#____________________________________________________________
#
# Intersight IP Pool Resource
# GUI Location: Pools > Create Pool
#____________________________________________________________

resource "intersight_ippool_pool" "ip_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  dynamic "ip_v4_blocks" {
    for_each = var.ipv4_block
    content {
      from = ip_v4_blocks.value.starting_ip
      size = ip_v4_blocks.value.pool_size
    }
  }
  dynamic "ip_v4_config" {
    for_each = var.ipv4_config
    content {
      gateway       = ip_v4_config.value.gateway
      netmask       = ip_v4_config.value.netmask
      primary_dns   = length(var.dns_servers_v4) > 0 ? var.dns_servers_v4[0] : null
      secondary_dns = length(var.dns_servers_v4) > 1 ? var.dns_servers_v4[1] : null
    }
  }
  dynamic "ip_v6_blocks" {
    for_each = var.ipv6_block
    content {
      from = ip_v6_blocks.value.starting_ip
      size = ip_v6_blocks.value.pool_size
    }
  }
  dynamic "ip_v6_config" {
    for_each = var.ipv6_config
    content {
      gateway       = ip_v6_config.value.gateway
      prefix        = ip_v6_config.value.prefix
      primary_dns   = length(var.dns_servers_v6) > 0 ? var.dns_servers_v6[0] : null
      secondary_dns = length(var.dns_servers_v6) > 1 ? var.dns_servers_v6[1] : null
    }
  }
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
