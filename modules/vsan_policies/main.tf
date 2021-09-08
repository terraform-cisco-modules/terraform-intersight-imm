#__________________________________________________________________
#
# Intersight VSAN Policy
# GUI Location: Policies > Create Policy > VSAN
#__________________________________________________________________

resource "intersight_fabric_fc_network_policy" "vsan_policy" {
  description     = var.description
  enable_trunking = var.uplink_trunking
  name            = var.name
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
