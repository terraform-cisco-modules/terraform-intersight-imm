#__________________________________________________________________
#
# Intersight Boot Order Policy
# GUI Location: Policies > Create Policy > Boot Order
#__________________________________________________________________

resource "intersight_boot_precision_policy" "boot_order" {
  configured_boot_mode     = var.boot_mode
  description              = var.description
  enforce_uefi_secure_boot = var.enable_secure_boot
  name                     = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "boot_devices" {
    for_each = var.boot_devices
    content {
      additional_properties = boot_devices.value.additional_properties != "" ? boot_devices.value.additional_properties : ""
      enabled               = boot_devices.value.enabled
      object_type           = boot_devices.value.object_type
      name                  = boot_devices.value.name
    }
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
