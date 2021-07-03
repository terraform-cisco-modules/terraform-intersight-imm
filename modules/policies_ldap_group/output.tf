#____________________________________________________________
#
# Collect the moid of the LDAP Group as an Output
#____________________________________________________________

output "moid" {
  description = "LDAP Group Managed Object ID (moid)."
  value       = intersight_iam_ldap_group.ldap_group.moid
}
