#__________________________________________________________________
#
# Intersight LDAP Policy - Server
# GUI Location: Policies > Create Policy > LDAP Policy > Server
#__________________________________________________________________

resource "intersight_iam_ldap_provider" "ldap_provider" {
  ldap_policy {
    moid = var.ldap_policy_moid
  }
  port   = var.port
  server = var.server
}
