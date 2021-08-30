#____________________________________________________________
#
# Example Intersight SNMP Policy Module
# GUI Location: Policies > Create Policy > SNMP
#____________________________________________________________

module "snmp_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.ucs_domain_profile_a_example,
    module.ucs_domain_profile_a_example
  ]
  source       = "terraform-cisco-modules/imm/intersight//modules/snmp_policies"
  description  = "SNMP Policy Example."
  name         = "example"
  org_moid     = local.org_moid
  profile_type = "domain"
  profiles = [
    module.ucs_domain_profile_a_example.moid,
    module.ucs_domain_profile_a_example.moid
  ]
  snmp_community  = var.snmp_community
  system_contact  = "admin@example.com"
  system_location = "Example Data Center"
  tags            = var.tags
  trap_community  = var.trap_community
  snmp_traps = [
    {
      community    = ""
      destination  = "198.18.1.1"
      enabled      = true
      port         = 162
      snmp_version = "V3"
      type         = "Trap"
      user         = "snmpuser1"
    },
    {
      community    = var.snmp_community
      destination  = "198.18.1.2"
      enabled      = true
      port         = 162
      snmp_version = "V2"
      type         = "Inform"
      user         = ""
    }
  ]
  snmp_users = [
    {
      auth_password    = var.auth_password
      auth_type        = "SHA"
      name             = "snmpuser1"
      privacy_password = var.privacy_password
      privacy_type     = "AES"
      security_level   = "AuthPriv"
    },
    {
      auth_password    = var.auth_password
      auth_type        = "MD5"
      name             = "snmpuser2"
      privacy_password = ""
      privacy_type     = "NA"
      security_level   = "AuthNoPriv"
    },
  ]
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "syslog_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/snmp_policies"
  description     = ""
  enabled         = true
  engine_id       = ""
  name            = "snmp"
  org_moid        = local.org_moid
  profiles        = []
  profile_type    = "domain"
  snmp_access     = "Full"
  snmp_community  = var.snmp_community
  snmp_port       = 161
  snmp_traps      = []
  snmp_users      = []
  sys_contact     = ""
  sys_location    = ""
  tags            = var.tags
  trap_community  = var.trap_community
  v2_enabled      = true
  v3_enabled      = true
}

*/
