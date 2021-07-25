
#________________________________________________________________
#
# Collect the moid of the Kubernetes Profile
#________________________________________________________________

output "moid" {
  description = "Kubernetes Cluster Profile Managed Object ID (moid)."
  value       = intersight_kubernetes_cluster_profile.cluster.moid
}
