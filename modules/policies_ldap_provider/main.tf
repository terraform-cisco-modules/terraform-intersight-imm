#____________________________________________________________
#
# Intersight LDAP Provider
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_iam_ldap_provider" "ldap_provider" {
  ldap_policy {
    moid = intersight_iam_ldap_policy.policy1.moid
  }
  port   = 389
  server = "172.16.1.90"
}
