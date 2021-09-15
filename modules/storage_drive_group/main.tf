#__________________________________________________________________
#
# Intersight Storage Policy > Drive Group
# GUI Location: Policies > Create Policy > Storage: Drive Group
#__________________________________________________________________

resource "intersight_storage_drive_group" "drive_group" {
  name       = var.name
  raid_level = var.raid_level
  storage_policy {
    moid = var.storage_moid
    # object_type = "organization.Organization"
  }
  dynamic "automatic_drive_group" {
    for_each = var.automatic_drive_group
    content {
      class_id                 = "storage.ManualDriveGroup"
      drives_per_span          = automatic_drive_group.value.drives_per_span
      drive_type               = automatic_drive_group.value.drive_type
      minimum_drive_size       = automatic_drive_group.value.minimum_drive_size
      num_dedicated_hot_spares = automatic_drive_group.value.num_dedicated_hot_spares != null ? automatic_drive_group.value.num_dedicated_hot_spares : 0
      number_of_spans          = automatic_drive_group.value.number_of_spans
      object_type              = "storage.ManualDriveGroup"
      use_remaining_drives     = automatic_drive_group.value.use_remaining_drives != null ? automatic_drive_group.value.use_remaining_drives : false
    }
  }
  dynamic "manual_drive_group" {
    for_each = var.manual_drive_group
    content {
      class_id             = "storage.ManualDriveGroup"
      dedicated_hot_spares = manual_drive_group.value.dedicated_hot_spares != null ? manual_drive_group.value.dedicated_hot_spares : ""
      object_type          = "storage.ManualDriveGroup"
      span_groups          = manual_drive_group.value.drive_array_spans
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
  dynamic "virtual_drives" {
    for_each = var.virtual_drives
    content {
      additional_properties = ""
      boot_drive            = virtual_drives.value.boot_drive
      class_id              = "storage.VirtualDriveConfiguration"
      expand_to_available   = virtual_drives.value.expand_to_available
      name                  = virtual_drives.key
      object_type           = "storage.VirtualDriveConfiguration"
      size                  = virtual_drives.value.size
      virtual_drive_policy = [
        {
          additional_properties = ""
          access_policy         = virtual_drives.value.access_policy
          class_id              = "storage.VirtualDrivePolicy"
          drive_cache           = virtual_drives.value.disk_cache
          object_type           = "storage.VirtualDrivePolicy"
          read_policy           = virtual_drives.value.read_policy
          strip_size            = virtual_drives.value.strip_size
          write_policy          = virtual_drives.value.write_policy
        }
      ]
    }
  }
}
