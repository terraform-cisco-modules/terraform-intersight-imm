#____________________________________________________________
#
# Collect the moid of the SMTP Policy as an Output
#____________________________________________________________

output "moid" {
  description = "SMTP Policy Managed Object ID (moid)."
  value       = intersight_smtp_policy.smtp.moid
}
