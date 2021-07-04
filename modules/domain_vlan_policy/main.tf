#____________________________________________________________
#
# Intersight Domain VLAN Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_eth_network_policy" "vlan_policy" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
      object_type = "fabric.SwitchProfile"
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
