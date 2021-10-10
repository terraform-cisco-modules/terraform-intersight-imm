#__________________________________________________________________
#
# Intersight Device Connector Policy
# GUI Location: Policies > Create Policy > Device Connector
#__________________________________________________________________

resource "intersight_deviceconnector_policy" "device_connector" {
  description     = var.description
  lockout_enabled = var.configuration_lockout
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
