#________________________________________________________________
#
# Collect the moid of the Kubernetes Version Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Version Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_version_policy.version.moid
}
