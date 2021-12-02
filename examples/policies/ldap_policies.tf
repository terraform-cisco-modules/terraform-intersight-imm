#____________________________________________________________
#
# Example Intersight LDAP Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

#______________________________________________
#
# LDAP Policy Example
#______________________________________________

module "ldap_policy_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/ldap_policies"
  description = "LDAP Policy Example accepting default values."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = {}
  tags        = var.tags
}

#______________________________________________
#
# LDAP Provider Examples
#______________________________________________

module "ldap_provider_server1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ldap_policy_example
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/ldap_add_server"
  ldap_policy_moid = module.ldap_policy_example.moid
  ldap_server      = "198.18.1.10"
}

module "ldap_provider_server2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ldap_policy_example
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/ldap_add_server"
  ldap_policy_moid = module.ldap_policy_example.moid
  ldap_server      = "198.18.1.11"
}

#______________________________________________
#
# LDAP Group Examples
#______________________________________________

module "ldap_group_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ldap_policy_example
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/ldap_add_group"
  ldap_group       = "server_ops"
  ldap_policy_moid = module.ldap_policy_example.moid
}

module "ldap_group_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ldap_policy_example
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/ldap_add_group"
  group_role       = "admin"
  ldap_group       = "server_admins"
  ldap_policy_moid = module.ldap_policy_example.moid
}


#______________________________________________
#
# LDAP Policy Default Values
#______________________________________________

/*

module "ldap_policy_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source                     = "terraform-cisco-modules/imm/intersight//modules/ldap_policies"
  attribute                  = "CiscoAvPair"
  base_dn                    = "dc=example,dc=com"
  bind_dn                    = ""
  bind_method                = "LoginCredentials"
  description                = ""
  domain                     = "example.com"
  enable_encryption          = false
  enable_dns                 = false
  enable_group_authorization = false
  enabled                    = true
  filter                     = "samAccountName"
  group_attribute            = "memberOf"
  name                       = "ldap_policy"
  nested_group_search_depth  = 128
  nr_source                  = "Extracted"
  org_moid                   = local.org_moid
  password                   = ""
  profiles                   = []
  search_domain              = ""
  search_forest              = ""
  tags                       = var.tags
  timeout                    = 0
  user_search_precedence     = "LocalUserDb"
}


#______________________________________________
#
# LDAP Provider Defaults
#______________________________________________

module "ldap_provider_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/ldap_add_server"
  ldap_policy_moid = ""
  ldap_port        = 389
  ldap_server      = ""
}


#______________________________________________
#
# LDAP Group Defaults
#______________________________________________

module "ldap_group_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/ldap_add_group"
  group_role       = "readonly"
  ldap_domain      = "example.com"
  ldap_group       = ""
  ldap_policy_moid = ""
}

*/

