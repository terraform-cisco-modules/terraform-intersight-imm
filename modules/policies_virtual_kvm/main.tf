#____________________________________________________________
#
# Intersight KVM Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_kvm_policy" "kvm" {
  description               = var.description
  enable_local_server_video = var.enable_local_server_video
  enable_video_encryption   = var.enable_video_encryption
  enabled                   = var.enabled
  maximum_sessions          = var.maximum_sessions
  name                      = var.name
  remote_port               = var.remote_port
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
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
