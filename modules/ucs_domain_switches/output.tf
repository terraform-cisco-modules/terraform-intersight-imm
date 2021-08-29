#____________________________________________________________
#
# Collect the moid of the UCS Domain Switch Profile
#____________________________________________________________

output "moid" {
  description = "UCS Domain Switch Profile Managed Object ID (moid)."
  value       = intersight_fabric_switch_profile.switch_profile.moid
}
