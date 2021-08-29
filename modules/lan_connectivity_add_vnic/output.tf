#________________________________________________________________
#
# Collect the moid of the LAN Connectivity - Add vNIC Policy
#________________________________________________________________

output "moid" {
  description = "LAN Connectivity - Add vNIC Managed Object ID (moid)."
  value       = intersight_vnic_eth_if.vnic.moid
}
