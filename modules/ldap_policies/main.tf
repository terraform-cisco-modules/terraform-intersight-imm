#__________________________________________________________________
#
# Intersight LDAP Policy
# GUI Location: Policies > Create Policy > LDAP
#__________________________________________________________________

resource "intersight_iam_ldap_policy" "ldap" {
  description = var.description
  name        = var.name
  enabled     = var.enable_ldap
  base_properties {
    # Base Settings
    base_dn = var.base_settings.base_dn
    domain  = var.base_settings.domain
    timeout = var.base_settings.timeout != null ? var.base_settings.timeout : 0
    # Enable LDAP Encryption
    enable_encryption = var.enable_encryption
    # Binding Parameters
    bind_method = var.binding_parameters.bind_method
    bind_dn     = var.binding_parameters.bind_dn
    password    = var.binding_parameters_password
    # Search Parameters
    attribute       = var.search_parameters.attribute
    filter          = var.search_parameters.filter
    group_attribute = var.search_parameters.group_attribute
    # Group Authorization
    enable_group_authorization = var.enable_group_authorization
    nested_group_search_depth  = var.nested_group_search_depth
  }
  # Configure LDAP Servers
  enable_dns = var.ldap_from_dns.enable
  dns_parameters {
    nr_source     = var.ldap_from_dns.source
    search_domain = var.ldap_from_dns.search_domain
    search_forest = var.ldap_from_dns.search_forest
  }
  user_search_precedence = var.user_search_precedence
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
