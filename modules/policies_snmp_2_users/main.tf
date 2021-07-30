#____________________________________________________________
#
# Intersight SNMP Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_snmp_policy" "snmp" {
  description             = var.description
  access_community_string = var.snmp_community
  community_access        = var.snmp_access
  enabled                 = var.enabled
  engine_id               = var.snmp_engine_id
  name                    = var.name
  snmp_port               = var.snmp_port
  sys_contact             = var.system_contact
  sys_location            = var.system_location
  trap_community          = var.trap_community
  v2_enabled              = var.v2_enabled
  v3_enabled              = var.v3_enabled
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
      object_type = var.profile_type == "chassis" ? "chassis.Profile" : var.profile_type == "domain" ? "fabric.SwitchProfile" : "server.Profile"
    }
  }
  dynamic "snmp_traps" {
    for_each = var.snmp_traps
    content {
      community   = snmp_traps.value.community
      destination = snmp_traps.value.destination
      enabled     = snmp_traps.value.enabled
      port        = snmp_traps.value.port
      type        = snmp_traps.value.type
      nr_version  = snmp_traps.value.snmp_version
      user        = snmp_traps.value.user
    }
  }
  snmp_users {
    auth_password    = var.user_1_auth_password
    auth_type        = var.user_1_auth_type
    name             = var.user_1_name
    privacy_password = var.user_1_privacy_password
    privacy_type     = "AES"
    security_level   = var.user_1_security_level
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
