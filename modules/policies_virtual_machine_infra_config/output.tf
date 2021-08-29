#________________________________________________________________________
#
# Collect the moid of the Kubernetes Virtual Machine Infra Config Policy
#________________________________________________________________________

output "moid" {
  description = "Kubernetes Virtull Machine Infra Config Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_virtual_machine_infra_config_policy.vsphere.moid
}
