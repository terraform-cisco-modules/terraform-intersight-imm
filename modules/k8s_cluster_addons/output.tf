#________________________________________________________________
#
# Collect the moid of the Kubernetes Addon Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Cluster Addon Managed Object ID (moid)."
  value       = intersight_kubernetes_cluster_addon_profile.cluster_addon.moid
}
