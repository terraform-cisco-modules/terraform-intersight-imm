#________________________________________________________________
#
# Collect the moid of the Kubernetes Addon Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Addon Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_addon_policy.addon.moid
}
