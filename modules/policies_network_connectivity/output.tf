#____________________________________________________________
#
# Collect the moid of the Network Connectivity (DNS) Policy
#____________________________________________________________

output "moid" {
  description = "Network Connecivity (DNS) Policy Managed Object ID (moid)."
  value       = intersight_networkconfig_policy.dns.moid
}
