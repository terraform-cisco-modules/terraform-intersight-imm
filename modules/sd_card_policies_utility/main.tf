#__________________________________________________________________
#
# Intersight SD Card Policy
# GUI Location: Policies > Create Policy > SD Card
#__________________________________________________________________

resource "intersight_sdcard_policy" "utility" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  partitions {
    type        = "Utility"
    object_type = "sdcard.Partition"
    virtual_drives {
      enable      = var.enable_diagnostics
      object_type = "sdcard.Diagnostics"
    }
    virtual_drives {
      enable      = var.enable_drivers
      object_type = "sdcard.Drivers"
    }
    virtual_drives {
      enable      = var.enable_huu
      object_type = "sdcard.HostUpgradeUtility"
    }
    virtual_drives {
      enable      = var.enable_scu
      object_type = "sdcard.ServerConfigurationUtility"
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
