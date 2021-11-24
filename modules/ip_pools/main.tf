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
    for_each = var.ipv4_blocks
    content {
      from = ip_v4_blocks.value.from
      size = ip_v4_blocks.value.size != null ? ip_v4_blocks.value.size : null
      to   = ip_v4_blocks.value.to != null ? ip_v4_blocks.value.to : null
    }
  }
  dynamic "ip_v4_config" {
    for_each = var.ipv4_config
    content {
      gateway       = ip_v4_config.value.gateway
      netmask       = ip_v4_config.value.netmask
      primary_dns   = ip_v4_config.value.primary_dns != null ? ip_v4_config.value.primary_dns : null
      secondary_dns = ip_v4_config.value.secondary_dns != null ? ip_v4_config.value.secondary_dns : null
    }
  }
  dynamic "ip_v6_blocks" {
    for_each = var.ipv6_blocks
    content {
      from = ip_v6_blocks.value.from
      size = ip_v6_blocks.value.size != null ? tonumber(ip_v6_blocks.value.size) : null
      to   = ip_v6_blocks.value.to != null ? ip_v6_blocks.value.to : null
    }
  }
  dynamic "ip_v6_config" {
    for_each = var.ipv6_config
    content {
      gateway       = ip_v6_config.value.gateway
      prefix        = ip_v6_config.value.prefix
      primary_dns   = ip_v6_config.value.primary_dns != null ? ip_v6_config.value.primary_dns : "::"
      secondary_dns = ip_v6_config.value.secondary_dns != null ? ip_v6_config.value.secondary_dns : "::"
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
