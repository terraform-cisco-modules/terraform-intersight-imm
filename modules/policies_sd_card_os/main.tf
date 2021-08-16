#____________________________________________________________
#
# Intersight Storage SD Card Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_sdcard_policy" "os" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  partitions {
    type        = "OS"
    object_type = "sdcard.Partition"
    virtual_drives {
      additional_properties = jsonencode({ Name = "Hypervisor" })
      enable                = true
      object_type           = "sdcard.OperatingSystem"
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
