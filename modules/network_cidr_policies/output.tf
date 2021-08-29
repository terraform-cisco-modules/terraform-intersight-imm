#________________________________________________________________
#
# Collect the moid of the Kubernetes Network CIDR Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Network CIDR Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_network_policy.network_cidr.moid
}
