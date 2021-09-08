#__________________________________________________________________
#
# Intersight IPMI over LAN Policy
# GUI Location: Policies > Create Policy > IPMI over LAN
#__________________________________________________________________

resource "intersight_ipmioverlan_policy" "ipmi" {
  description    = var.description
  enabled        = var.enabled
  encryption_key = var.encryption_key
  privilege      = var.privilege
  name           = var.name
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
