#____________________________________________________________
#
# Intersight LDAP Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_iam_ldap_policy" "ldap_policy" {
  base_properties {
    attribute                  = "CiscoAvPair"
    base_dn                    = "dc=auslab,dc=cisco,dc=com"
    bind_method                = "LoginCredentials"
    domain                     = "auslab.cisco.com"
    enable_encryption          = false
    enable_group_authorization = true
    filter                     = "samAccountName"
    group_attribute            = "memberOf"
    is_password_set            = false
    nested_group_search_depth  = 128
    timeout                    = 30
  }
  description            = var.description
  enable_dns             = false
  enabled                = var.enabled
  name                   = var.name
  user_search_precedence = "LDAPUserDb"
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
