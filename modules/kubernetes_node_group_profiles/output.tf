
#________________________________________________________________
#
# Collect the moid of the Kubernetes Node Group Profiles
#________________________________________________________________

output "moid" {
  description = "Intersight Kubernetes Cluster Node Group Profile Managed Object ID (moid)."
  value       = intersight_kubernetes_node_group_profile.node_group_profile.moid
}
