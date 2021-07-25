
#________________________________________________________________
#
# Collect the moid of the Kubernetes Node Profile
#________________________________________________________________

output "moid" {
  description = "Intersight Kubernetes Service Cluster Node Profile Managed Object ID (moid)."
  value       = intersight_kubernetes_node_group_profile.node_profile.moid
}
