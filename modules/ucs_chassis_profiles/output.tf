#____________________________________________________________
#
# Collect the moid of the UCS Chassis Profile
#____________________________________________________________

output "moid" {
  description = "UCS Chassis Profile Managed Object ID (moid)."
  value       = intersight_chassis_profile.chassis_profile.moid
}

output "name" {
  description = "UCS Chassis Profile Name."
  value       = intersight_chassis_profile.chassis_profile.name
}
