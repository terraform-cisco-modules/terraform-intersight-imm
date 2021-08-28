#____________________________________________________________
#
# Collect the moid of the Ethernet Network Policy
#____________________________________________________________

output "moid" {
  description = "Ethernet Network Policy Managed Object ID (moid)."
  value       = intersight_vnic_eth_network_policy.vnic_policy.moid
}
