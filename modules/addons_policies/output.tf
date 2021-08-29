#________________________________________________________________
#
# Collect the moid of the Kubernetes Add-ons Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Add-ons Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_addon_policy.addons.moid
}

output "name" {
  description = "Kubernetes Add-ons Policy Name."
  value       = intersight_kubernetes_addon_policy.addons.name
}
