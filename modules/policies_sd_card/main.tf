#____________________________________________________________
#
# Intersight Storage SD Card Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_sdcard_policy" "sd_card" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "partitions" {
    for_each = var.partitions
    content {
      additional_properties = ""
      type                  = partitions.value.type
      object_type           = "sdcard.Partition"
      virtual_drives = partitions.value.type == "OS" ? [
        {
          # ClassId    = "sdcard.OperatingSystem",
          Enable     = true,
          Name       = "Hypervisor",
          ObjectType = "sdcard.OperatingSystem"
        }
        ] : [
        {
          # ClassId    = "sdcard.Diagnostics",
          Enable     = true,
          ObjectType = "sdcard.Diagnostics"
        },
        {
          # ClassId    = "sdcard.Drivers",
          Enable     = true,
          ObjectType = "sdcard.Drivers"
        },
        {
          # ClassId    = "sdcard.HostUpgradeUtility",
          Enable     = true,
          ObjectType = "sdcard.HostUpgradeUtility"
        },
        {
          # ClassId    = "sdcard.ServerConfigurationUtility",
          Enable     = true,
          ObjectType = "sdcard.ServerConfigurationUtility"
        },
        {
          # ClassId    = "sdcard.UserPartition",
          Enable     = true,
          ObjectType = "sdcard.UserPartition"
        }
      ]
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
