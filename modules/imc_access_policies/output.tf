#____________________________________________________________
#
# Collect the moid of the IMC Access Policy as an Output
#____________________________________________________________

output "moid" {
  description = "IMC Access Policy Managed Object ID (moid)."
  value       = intersight_access_policy.imc_access.moid
}
