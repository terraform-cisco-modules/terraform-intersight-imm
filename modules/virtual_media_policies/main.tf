#__________________________________________________________________
#
# Intersight Virtual Media Policy
# GUI Location: Policies > Create Policy > Virtual Media
#__________________________________________________________________

locals {
  vmedia_mounts = {
    for k, v in var.vmedia_mounts : k => {
      authentication_protocol = v.authentication_protocol != null ? v.authentication_protocol : "none"
      device_type             = v.device_type != null ? v.device_type : "cdd"
      file_location           = v.file_location
      mount_options           = v.mount_options != null ? v.mount_options : ""
      name                    = k
      password                = v.password != null ? v.password : 0
      protocol                = v.protocol != null ? v.protocol : "nfs"
      username                = v.username != null ? v.username : ""
    }
  }
}

resource "intersight_vmedia_policy" "vmedia" {
  description   = var.description
  enabled       = var.enable_virtual_media
  encryption    = var.enable_virtual_media_encryption
  low_power_usb = var.enable_low_power_usb
  name          = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "mappings" {
    for_each = local.vmedia_mounts
    content {
      additional_properties   = ""
      authentication_protocol = mappings.value.authentication_protocol
      class_id                = "vmedia.Mapping"
      device_type             = mappings.value.device_type
      file_location           = mappings.value.file_location
      host_name               = ""
      is_password_set         = mappings.value.password != 0 ? true : false
      mount_options           = mappings.value.mount_options
      mount_protocol          = mappings.value.protocol
      object_type             = "vmedia.Mapping"
      password = length(
        regexall("1", mappings.value.password)) > 0 ? var.vmedia_password_1 : length(
        regexall("2", mappings.value.password)) > 0 ? var.vmedia_password_2 : length(
        regexall("3", mappings.value.password)) > 0 ? var.vmedia_password_3 : length(
        regexall("4", mappings.value.password)) > 0 ? var.vmedia_password_4 : length(
        regexall("5", mappings.value.password)
      ) > 0 ? var.vmedia_password_5 : ""
      remote_file = ""
      remote_path = ""
      username    = mappings.value.username
      volume_name = mappings.value.name
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
