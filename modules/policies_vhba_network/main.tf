#____________________________________________________________
#
# Intersight NTP Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_ntp_policy" "ntp" {
  description = var.description
  enabled     = var.enabled
  name        = var.name
  ntp_servers = var.ntp_servers
  timezone    = var.timezone
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value["moid"]
      object_type = profiles.value["object_type"]
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
