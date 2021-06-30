#____________________________________________________________
#
# Collect the moid of the Storage SD Card Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Storage SD Card Policy Managed Object ID (moid)."
  value       = intersight_sdcard_policy.sd_card.moid
}
