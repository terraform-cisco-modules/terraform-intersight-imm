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
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
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
  dynamic "snmp_users" {
    for_each = var.snmp_users
    content {
      auth_password    = snmp_users.value.auth_password
      auth_type        = snmp_users.value.auth_type
      name             = snmp_users.value.name
      privacy_password = snmp_users.value.privacy_password
      privacy_type     = snmp_users.value.privacy_type
      security_level   = snmp_users.value.security_level
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
