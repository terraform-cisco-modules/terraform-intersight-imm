#__________________________________________________________________
#
# Intersight SNMP Policy
# GUI Location: Policies > Create Policy > SNMP
#__________________________________________________________________

resource "intersight_snmp_policy" "snmp" {
  description             = var.description
  access_community_string = var.access_community_string
  community_access        = var.snmp_community_access
  enabled                 = var.enable_snmp
  engine_id               = var.snmp_engine_input_id
  name                    = var.name
  snmp_port               = var.snmp_port
  sys_contact             = var.system_contact
  sys_location            = var.system_location
  trap_community          = var.trap_community_string
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
    for_each = var.snmp_trap_destinations
    content {
      community = length(
        regexall("1", coalesce(snmp_traps.value.community_string, 10))
        ) > 0 ? var.snmp_trap_community_1 : length(
        regexall("2", coalesce(snmp_traps.value.community_string, 10))
        ) > 0 ? var.snmp_trap_community_2 : length(
        regexall("3", coalesce(snmp_traps.value.community_string, 10))
        ) > 0 ? var.snmp_trap_community_3 : length(
        regexall("4", coalesce(snmp_traps.value.community_string, 10))
        ) > 0 ? var.snmp_trap_community_4 : length(
        regexall("5", coalesce(snmp_traps.value.community_string, 10))
      ) > 0 ? var.snmp_trap_community_5 : ""
      destination = snmp_traps.key
      enabled     = snmp_traps.value.enable
      port        = snmp_traps.value.port
      type        = snmp_traps.value.trap_type
      nr_version  = snmp_traps.value.user != "" ? "V3" : "V2"
      user        = snmp_traps.value.user
    }
  }
  dynamic "snmp_users" {
    for_each = var.snmp_users
    content {
      auth_password = length(
        regexall("1", coalesce(snmp_users.value.auth_password, 10))
        ) > 0 ? var.snmp_auth_password_1 : length(
        regexall("2", coalesce(snmp_users.value.auth_password, 10))
        ) > 0 ? var.snmp_auth_password_2 : length(
        regexall("3", coalesce(snmp_users.value.auth_password, 10))
        ) > 0 ? var.snmp_auth_password_3 : length(
        regexall("4", coalesce(snmp_users.value.auth_password, 10))
        ) > 0 ? var.snmp_auth_password_3 : length(
        regexall("5", coalesce(snmp_users.value.auth_password, 10))
      ) > 0 ? var.snmp_auth_password_5 : ""
      auth_type = snmp_users.value.auth_type
      # auth_type        = snmp_users.value.auth_type
      name = snmp_users.key
      privacy_password = length(
        regexall("1", coalesce(snmp_users.value.privacy_password, 10))
        ) > 0 ? var.snmp_privacy_password_1 : length(
        regexall("2", coalesce(snmp_users.value.privacy_password, 10))
        ) > 0 ? var.snmp_privacy_password_2 : length(
        regexall("3", coalesce(snmp_users.value.privacy_password, 10))
        ) > 0 ? var.snmp_privacy_password_3 : length(
        regexall("4", coalesce(snmp_users.value.privacy_password, 10))
        ) > 0 ? var.snmp_privacy_password_3 : length(
        regexall("5", coalesce(snmp_users.value.privacy_password, 10))
      ) > 0 ? var.snmp_privacy_password_5 : ""
      privacy_type = snmp_users.value.privacy_type
      # privacy_type     = snmp_users.value.privacy_type
      security_level = snmp_users.value.security_level
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
