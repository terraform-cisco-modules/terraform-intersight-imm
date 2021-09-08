#__________________________________________________________________
#
# Intersight IMC Access Policy
# GUI Location: Policies > Create Policy > IMC Access
#__________________________________________________________________

resource "intersight_access_policy" "imc_access" {
  description = var.description
  inband_vlan = var.inband_vlan_id
  name        = var.name
  address_type {
    enable_ip_v4 = var.enable_ipv4
    enable_ip_v6 = var.enable_ipv6
    object_type  = "access.AddressType"
  }
  inband_ip_pool {
    moid        = var.inband_ip_pool
    object_type = "ippool.Pool"
  }
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
