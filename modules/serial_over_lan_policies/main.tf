#__________________________________________________________________
#
# Intersight Serial over LAN Policy
# GUI Location: Policies > Create Policy > Serial over LAN
#__________________________________________________________________

resource "intersight_sol_policy" "sol" {
  baud_rate   = var.baud_rate
  com_port    = var.com_port
  description = var.description
  enabled     = var.enabled
  name        = var.name
  ssh_port    = var.ssh_port
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
