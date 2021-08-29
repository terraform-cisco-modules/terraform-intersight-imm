#____________________________________________________________
#
# Collect the moid of the LDAP Policy as an Output
#____________________________________________________________

output "moid" {
  description = "LDAP Policy Managed Object ID (moid)."
  value       = intersight_iam_ldap_policy.ldap.moid
}
