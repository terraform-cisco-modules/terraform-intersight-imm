#____________________________________________________________
#
# Collect the moid of the System QoS Policy as an Output
#____________________________________________________________

output "moid" {
  description = "System QoS Policy Managed Object ID (moid)."
  value       = intersight_fabric_system_qos_policy.system_qos.moid
}
