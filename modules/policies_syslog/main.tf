#____________________________________________________________
#
# Intersight Syslog Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_syslog_policy" "syslog" {
  description  = var.description
  name         = var.name
  profile_type = var.profile_type
  local_clients {
    min_severity = var.syslog_severity
    object_type  = "syslog.LocalFileLoggingClient"
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
      object_type = var.profile_type == "domain" ? "fabric.SwitchProfile" : "server.Profile"
    }
  }
  dynamic "remote_clients" {
    for_each = var.remote_clients
    content {
      enabled      = remote_clients.value.enabled
      hostname     = remote_clients.value.hostname
      port         = remote_clients.value.port
      protocol     = remote_clients.value.protocol
      min_severity = remote_clients.value.min_severity
      object_type  = "syslog.RemoteLoggingClient"
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
