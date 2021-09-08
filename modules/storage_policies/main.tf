#__________________________________________________________________
#
# Intersight Storage Policy
# GUI Location: Policies > Create Policy > Storage
#__________________________________________________________________

resource "intersight_storage_storage_policy" "storage" {
  description              = var.description
  global_hot_spares        = var.global_hot_spares
  name                     = var.name
  unused_disks_state       = var.unused_disks_state
  use_jbod_for_vd_creation = var.use_jbod_for_vd_creation
  # retain_policy_virtual_drives = var.retain_policy
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "m2_virtual_drive" {
    for_each = var.m2_virtual_drive
    content {
      controller_slot = m2_virtual_drive.value.controller_slot
      enable          = m2_virtual_drive.value.enable
      # additional_properties = ""
      # object_type           = "storage.DiskGroupPolicy"
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "raid0_drive" {
    for_each = var.raid0_drive
    content {
      drive_slots = raid0_drive.value.drive_slots
      enable      = raid0_drive.value.enable
      object_type = "server.Profile"
      virtual_drive_policy = {
        access_policy = virtual_drives.value.access_policy
        drive_cache   = virtual_drives.value.drive_cache
        object_type   = "storage.VirtualDriveConfig"
        read_policy   = virtual_drives.value.read_policy
        strip_size    = virtual_drives.value.strip_size
        write_policy  = virtual_drives.value.write_policy
      }
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
