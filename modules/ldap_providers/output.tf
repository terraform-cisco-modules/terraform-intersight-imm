#____________________________________________________________
#
# Collect the moid of the LDAP Provider as an Output
#____________________________________________________________

output "moid" {
  description = "LDAP Provider Managed Object ID (moid)."
  value       = intersight_iam_ldap_provider.ldap_provider.moid
}
