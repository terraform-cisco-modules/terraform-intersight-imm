#__________________________________________________________________
#
# Intersight SSH Policy
# GUI Location: Policies > Create Policy > SSH
#__________________________________________________________________

resource "intersight_ssh_policy" "ssh" {
  description = var.description
  enabled     = var.enable_ssh
  name        = var.name
  port        = var.ssh_port
  timeout     = var.ssh_timeout
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
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
