#____________________________________________________________
#
# Collect the moid of the Switch Control Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Switch Control Policy Managed Object ID (moid)."
  value       = intersight_fabric_switch_control_policy.switch_control.moid
}
