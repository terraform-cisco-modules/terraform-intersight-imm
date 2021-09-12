#__________________________________________________________________
#
# Intersight Port Policy
# GUI Location: Policies > Create Policy > Port
#__________________________________________________________________

resource "intersight_fabric_port_policy" "port_policy" {
  description  = var.description
  device_model = var.device_model
  name         = var.name
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
