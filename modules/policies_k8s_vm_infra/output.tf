#________________________________________________________________
#
# Collect the moid of the Kubernetes VM Infra Config Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Addon Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_virtual_machine_infra_config_policy.vsphere.moid
}
