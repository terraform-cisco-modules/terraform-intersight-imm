#____________________________________________________________
#
# Collect the moid of the SNMP Policy as an Output
#____________________________________________________________

output "moid" {
  description = "SNMP Policy Managed Object ID (moid)."
  value       = intersight_snmp_policy.snmp.moid
}
