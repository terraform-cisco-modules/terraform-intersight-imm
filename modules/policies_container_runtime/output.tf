#________________________________________________________________
#
# Collect the moid of the Kubernetes Container Runtime Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Container Runtime Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_container_runtime_policy.runtime.moid
}
