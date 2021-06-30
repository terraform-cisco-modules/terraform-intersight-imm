#____________________________________________________________
#
# Collect the moid of the Syslog Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Syslog Policy Managed Object ID (moid)."
  value       = intersight_syslog_policy.syslog.moid
}
