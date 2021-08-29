#__________________________________________________________________
#
# Intersight LDAP Policy
# GUI Location: Policies > Create Policy > LDAP
#__________________________________________________________________

resource "intersight_iam_ldap_policy" "ldap" {
  base_properties {
    attribute                  = var.attribute
    base_dn                    = var.base_dn
    bind_dn                    = var.bind_dn
    bind_method                = var.bind_method
    domain                     = var.domain
    enable_encryption          = var.enable_encryption
    enable_group_authorization = var.enable_group_authorization
    filter                     = var.filter
    group_attribute            = var.group_attribute
    nested_group_search_depth  = var.nested_group_search_depth
    password                   = var.password
    timeout                    = var.timeout
  }
  description = var.description
  dns_parameters {
    nr_source     = var.nr_source
    search_domain = var.search_domain
    search_forest = var.search_forest
  }
  enable_dns             = var.enable_dns
  enabled                = var.enabled
  name                   = var.name
  user_search_precedence = var.user_search_precedence
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
