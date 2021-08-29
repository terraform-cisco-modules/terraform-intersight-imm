#__________________________________________________________________
#
# Intersight Disk Group Policy
# GUI Location: Policies > Create Policy > Disk Group
#__________________________________________________________________

locals {
  disk_group = ([
    for s in keys(var.span_groups) : [
      for slot in var.span_groups[s] : {
        additional_properties = ""
        class_id              = "storage.LocalDisk"
        object_type           = "storage.LocalDisk"
        slot_number           = slot.disk
      }
    ]
  ])
}

resource "intersight_storage_disk_group_policy" "disk_group" {
  description = var.description
  name        = var.name
  raid_level  = var.raid_level
  use_jbods   = var.use_jbods
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "dedicated_hot_spares" {
    for_each = var.hot_spares
    content {
      object_type = "storage.LocalDisk"
      slot_number = (dedicated_hot_spares.value + 1)
    }
  }
  dynamic "span_groups" {
    for_each = local.disk_group
    content {
      additional_properties = ""
      object_type           = "storage.SpanGroup"
      disks                 = span_groups.value
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
