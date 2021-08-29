#____________________________________________________________
#
# Collect the moid of the VSAN Policy as an Output
#____________________________________________________________

output "moid" {
  description = "VSAN Policy Managed Object ID (moid)."
  value       = intersight_fabric_fc_network_policy.vsan_policy.moid
}
