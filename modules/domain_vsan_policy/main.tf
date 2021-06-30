#____________________________________________________________
#
# Intersight Domain VSAN Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_fc_network_policy" "vsan_policy" {
  description     = var.description
  name            = var.name
  enable_trunking = var.enable_trunking
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
