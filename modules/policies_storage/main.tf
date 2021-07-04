#____________________________________________________________
#
# Intersight Storage Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_storage_storage_policy" "storage" {
  description                  = var.description
  name                         = var.name
  retain_policy_virtual_drives = var.retain_policy
  unused_disks_state           = var.unused_disks
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "disk_group_policies" {
    for_each = var.disk_group_policies
    content {
      additional_properties = ""
      moid                  = disk_group_policies.value.disk_group_moid
      object_type           = "storage.DiskGroupPolicy"
      selector              = ""
    }
  }
  dynamic "virtual_drives" {
    for_each = var.disk_group_policies
    content {
      access_policy         = virtual_drives.value.access_policy
      additional_properties = virtual_drives.value.additional_properties
      boot_drive            = virtual_drives.value.boot_drive
      disk_group_name       = virtual_drives.value.disk_group_name
      disk_group_policy     = virtual_drives.value.disk_group_policy
      drive_cache           = virtual_drives.value.drive_cache
      expand_to_available   = virtual_drives.value.expand_to_available
      io_policy             = virtual_drives.value.io_policy
      name                  = virtual_drives.value.name
      object_type           = "storage.VirtualDriveConfig"
      read_policy           = virtual_drives.value.read_policy
      size                  = virtual_drives.value.size
      strip_size            = virtual_drives.value.strip_size
      vdid                  = virtual_drives.value.vdid
      write_policy          = virtual_drives.value.write_policy
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
