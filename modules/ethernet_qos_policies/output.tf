#________________________________________________________________
#
# Collect the moid of the Ethernet Qos Policy
#________________________________________________________________

output "moid" {
  description = "Ethernet Qos Policy Managed Object ID (moid)."
  value       = intersight_vnic_eth_qos_policy.vnic_qos.moid
}
