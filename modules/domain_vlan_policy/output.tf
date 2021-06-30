#____________________________________________________________
#
# Collect the moid of the Domain VLAN Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Domain VLAN Policy Managed Object ID (moid)."
  value       = intersight_fabric_eth_network_policy.vlan_policy.moid
}
