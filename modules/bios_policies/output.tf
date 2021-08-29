#____________________________________________________________
#
# Collect the moid of the NTP Policy as an Output
#____________________________________________________________

output "moid" {
  description = "BIOS Policy Managed Object ID (moid)."
  value       = intersight_bios_policy.bios.moid
}
