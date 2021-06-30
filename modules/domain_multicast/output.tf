#____________________________________________________________
#
# Collect the moid of the Multicast Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Multicast Policy Managed Object ID (moid)."
  value       = intersight_fabric_multicast_policy.multicast.moid
}
