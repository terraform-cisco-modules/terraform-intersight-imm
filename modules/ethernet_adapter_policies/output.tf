#____________________________________________________________
#
# Collect the moid of the Ethernet Adapter Policy
#____________________________________________________________

output "moid" {
  description = "Ethernet Adapter Policy Managed Object ID (moid)."
  value       = intersight_vnic_eth_adapter_policy.ethernet_adapter.moid
}
