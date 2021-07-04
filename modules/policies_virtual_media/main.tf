#____________________________________________________________
#
# Intersight vMedia Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vmedia_policy" "vmedia" {
  description   = var.description
  enabled       = var.enabled
  encryption    = var.encryption
  name          = var.name
  low_power_usb = var.low_power_usb
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "mappings" {
    for_each = var.profiles
    content {
      additional_properties   = mappings.value.additional_properties
      authentication_protocol = mappings.value.authentication_protocol
      device_type             = mappings.value.device_type
      file_location           = mappings.value.file_location
      host_name               = mappings.value.host_name
      is_password_set         = mappings.value.is_password_set
      mount_options           = mappings.value.mount_options
      mount_protocol          = mappings.value.mount_protocol
      object_type             = mappings.value.object_type
      password                = mappings.value.password
      remote_file             = mappings.value.remote_file
      remote_path             = mappings.value.remote_path
      sanitized_file_location = mappings.value.sanitized_file_location
      username                = mappings.value.username
      volume_name             = mappings.value.volume_name
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
