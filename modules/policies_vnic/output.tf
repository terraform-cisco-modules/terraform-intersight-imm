#________________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) Policy
#________________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) Policy Managed Object ID (moid)."
  value       = intersight_vnic_eth_if.vnic.moid
}
