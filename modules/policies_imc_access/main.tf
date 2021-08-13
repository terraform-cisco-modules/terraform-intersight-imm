#____________________________________________________________
#
# Intersight IMC Access Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_access_policy" "imc_access" {
  description = var.description
  inband_vlan = var.inband_vlan
  name        = var.name
  address_type {
    enable_ip_v4 = var.ipv4_enable
    enable_ip_v6 = var.ipv6_enable
    object_type  = "access.AddressType"
  }
  inband_ip_pool {
    moid        = var.imc_ip_pool
    object_type = "ippool.Pool"
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
      object_type = var.profile_type == "chassis" ? "chassis.Profile" : var.profile_type == "domain" ? "fabric.SwitchProfile" : "server.Profile"
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
