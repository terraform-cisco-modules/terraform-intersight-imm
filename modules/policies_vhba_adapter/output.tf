#____________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) Adapter Policy
#____________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) Adapter Policy Managed Object ID (moid)."
  value       = intersight_vnic_eth_adapter_policy.vnic_adapter.moid
}
