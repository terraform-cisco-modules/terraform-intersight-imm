#__________________________________________________________________
#
# Intersight Network Connectivity Policy
# GUI Location: Policies > Create Policy > Network Connectivity
#__________________________________________________________________

/*
  IPv6 is enabled because this is the only way that the provider allows the
  IPv6 DNS servers (primary and alternate) to be set to something. If it is not
  set to something other than null in this resource, then terraform "apply"
  will detect that thare changes to apply every time ("::" -> null).
*/

resource "intersight_networkconfig_policy" "dns" {
  alternate_ipv4dns_server = length(var.dns_servers_v4) > 1 ? var.dns_servers_v4[1] : null
  alternate_ipv6dns_server = length(var.dns_servers_v6) > 1 ? var.dns_servers_v6[1] : null
  description              = var.description
  dynamic_dns_domain       = var.update_domain
  enable_dynamic_dns       = var.dynamic_dns
  enable_ipv4dns_from_dhcp = var.dynamic_dns == true ? true : false
  enable_ipv6              = var.ipv6_enable
  enable_ipv6dns_from_dhcp = var.ipv6_enable == true && var.dynamic_dns == true ? true : false
  preferred_ipv4dns_server = length(var.dns_servers_v4) > 0 ? var.dns_servers_v4[0] : null
  preferred_ipv6dns_server = length(var.dns_servers_v6) > 0 ? var.dns_servers_v6[0] : null
  name                     = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
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
