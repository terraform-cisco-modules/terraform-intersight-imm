#__________________________________________________________________
#
# Intersight VLAN Policy
# GUI Location: Policies > Create Policy > VLAN
#__________________________________________________________________

resource "intersight_fabric_eth_network_policy" "vlan" {
  description = var.description
  name        = var.name
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
