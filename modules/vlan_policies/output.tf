#____________________________________________________________
#
# Collect the moid of the VLAN Policy as an Output
#____________________________________________________________

output "moid" {
  description = "VLAN Policy Managed Object ID (moid)."
  value       = intersight_fabric_eth_network_policy.vlan.moid
}
