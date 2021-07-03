#____________________________________________________________
#
# Collect the moid of the SAN Connectivity Policy
#____________________________________________________________

output "moid" {
  description = "SAN Connectivity Policy Managed Object ID (moid)."
  value       = intersight_vnic_san_connectivity_policy.san_connectivity.moid
}
