#____________________________________________________________
#
# Collect the moid of the UCS Domain Profile - Switch
#____________________________________________________________

output "moid" {
  description = "UCS Domain Profile - Switch Managed Object ID (moid)."
  value       = intersight_fabric_switch_profile.switch_profile.moid
}
