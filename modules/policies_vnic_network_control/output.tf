#________________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) Network Control Policy
#________________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) Network Control Policy Managed Object ID (moid)."
  value       = intersight_fabric_eth_network_control_policy.vnic_control.moid
}
