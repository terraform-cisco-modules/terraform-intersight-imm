#____________________________________________________________
#
# Collect the moid of the NTP Policy as an Output
#____________________________________________________________

output "moid" {
  description = "NTP Policy Managed Object ID (moid)."
  value       = intersight_ntp_policy.ntp.moid
}
