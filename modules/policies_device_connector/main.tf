#____________________________________________________________
#
# Intersight Device Connector Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_deviceconnector_policy" "device_connector" {
  description     = var.description
  lockout_enabled = var.lockout
  name            = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = "server.Profile"
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
