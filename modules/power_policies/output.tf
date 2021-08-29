#____________________________________________________________
#
# Collect the moid of the Power Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Power Policy Managed Object ID (moid)."
  value       = intersight_power_policy.power.moid
}
