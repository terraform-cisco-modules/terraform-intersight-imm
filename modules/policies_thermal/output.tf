#____________________________________________________________
#
# Collect the moid of the Thermal Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Thermal Policy Managed Object ID (moid)."
  value       = intersight_thermal_policy.thermal.moid
}
