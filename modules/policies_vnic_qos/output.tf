#________________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) Qos Policy
#________________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) Qos Policy Managed Object ID (moid)."
  value       = intersight_vnic_eth_qos_policy.vnic_qos.moid
}
