#____________________________________________________________
#
# Collect the moid of the Flow Control Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Flow Control Policy Managed Object ID (moid)."
  value       = intersight_fabric_flow_control_policy.flow_control.moid
}
