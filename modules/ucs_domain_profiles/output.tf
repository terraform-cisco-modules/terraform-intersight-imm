#____________________________________________________________
#
# Collect the moid of the UCS Domain Cluster Profile
#____________________________________________________________

output "moid" {
  description = "UCS Domain Cluster Profile Managed Object ID (moid)."
  value       = intersight_fabric_switch_cluster_profile.domain_profile.moid
}
