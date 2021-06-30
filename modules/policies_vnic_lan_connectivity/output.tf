#____________________________________________________________
#
# Collect the moid of the LAN Connectivity Policy
#____________________________________________________________

output "moid" {
  description = "LAN Connectivity Policy Managed Object ID (moid)."
  value       = intersight_vnic_lan_connectivity_policy.lan_connectivity.moid
}
