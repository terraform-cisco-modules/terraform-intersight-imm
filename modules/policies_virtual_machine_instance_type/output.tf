#________________________________________________________________
#
# Collect the moid of the Kubernetes Virtual Machine Instance Type
#________________________________________________________________

output "moid" {
  description = "Kubernetes Virtual Machine Instance Type Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_virtual_machine_instance_type.vm_instance_type.moid
}
