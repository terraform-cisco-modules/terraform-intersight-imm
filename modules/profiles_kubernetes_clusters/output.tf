
#________________________________________________________________
#
# Collect the moid of the Kubernetes Cluster Profile
#________________________________________________________________

output "cluster_moid" {
  description = "Kubernetes Cluster Managed Object ID (moid)."
  value       = intersight_kubernetes_cluster_profile.cluster.associated_cluster[0].moid
}

output "profile_moid" {
  description = "Kubernetes Cluster Profile Managed Object ID (moid)."
  value       = intersight_kubernetes_cluster_profile.cluster.moid
}
