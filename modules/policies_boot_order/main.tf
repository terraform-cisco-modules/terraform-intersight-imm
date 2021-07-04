#____________________________________________________________
#
# Intersight Boot Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_boot_precision_policy" "boot" {
  configured_boot_mode     = var.boot_mode
  description              = var.description
  enforce_uefi_secure_boot = var.boot_secure
  name                     = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "boot_devices" {
    for_each = var.boot_devices
    content {
      additional_properties = boot_devices.value.additional_properties
      enabled               = boot_devices.value.enabled
      object_type           = boot_devices.value.object_type
      name                  = boot_devices.value.name
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
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
