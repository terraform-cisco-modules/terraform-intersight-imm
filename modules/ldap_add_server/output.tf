#____________________________________________________________
#
# Collect the moid of the LDAP Server as an Output
#____________________________________________________________

output "moid" {
  description = "LDAP Server Managed Object ID (moid)."
  value       = intersight_iam_ldap_provider.ldap_provider.moid
}
