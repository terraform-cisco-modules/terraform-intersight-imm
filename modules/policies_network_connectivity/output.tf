#____________________________________________________________
#
# Collect the moid of the Network Connectivity Policy
#____________________________________________________________

output "moid" {
  description = "Network Connecivity Policy Managed Object ID (moid)."
  value       = intersight_networkconfig_policy.dns.moid
}
