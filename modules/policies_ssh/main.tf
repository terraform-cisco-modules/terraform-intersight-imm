#____________________________________________________________
#
# Intersight SSH Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_ssh_policy" "ssh" {
  description = var.description
  enabled     = var.enabled
  name        = var.name
  port        = var.ssh_port
  timeout     = var.timeout
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
