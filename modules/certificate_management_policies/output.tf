#____________________________________________________________
#
# Collect the moid of the IMC Access Policy as an Output
#____________________________________________________________

output "moid" {
  description = "IMC Access Policy Managed Object ID (moid)."
  value       = intersight_certificatemanagement_policy.certificate.moid
}
