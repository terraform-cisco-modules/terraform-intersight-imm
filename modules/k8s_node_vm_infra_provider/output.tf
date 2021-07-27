#________________________________________________________________
#
# Collect the moid of the Kubernetes Virtual Machine Infrastructure Provider
#________________________________________________________________

output "moid" {
  description = "Kubernetes Virtual Machine Infrastructure Provider Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_virtual_machine_infrastructure_provider.k8s_vm_infra_provider.moid
}
