#___________________________________________________________________________
#
# Collect the moid of the Kubernetes Trusted Certificate Authorities Policy
#___________________________________________________________________________

output "moid" {
  description = "Kubernetes Trusted Certificate Authorities Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_trusted_registries_policy.trusted_registries.moid
}
