#____________________________________________________________
#
# Intersight LDAP Provider
# GUI Location: Policies > Create Policy > LDAP
#____________________________________________________________

resource "intersight_iam_ldap_provider" "ldap_provider" {
  ldap_policy {
    moid = var.ldap_policy_moid
  }
  port   = var.ldap_port
  server = var.ldap_server
}
