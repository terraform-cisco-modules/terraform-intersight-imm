#________________________________________________________________
#
# Collect the moid of the Kubernetes Node OS Configuration Policy
#________________________________________________________________

output "moid" {
  description = "Kubernetes Node OS Configuration Policy Managed Object ID (moid)."
  value       = intersight_kubernetes_sys_config_policy.nodeos_config.moid
}
