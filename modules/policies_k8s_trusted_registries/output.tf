#________________________________________________________________
#
# Collect the moid of the Kubernetes Trusted Registries Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Trusted Registries Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_trusted_registries_policy.trusted_registries.moid
}
