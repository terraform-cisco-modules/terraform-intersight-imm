#____________________________________________________________
#
# Collect the moid of the vMedia Policy as an Output
#____________________________________________________________

output "moid" {
  description = "vMedia Policy Managed Object ID (moid)."
  value       = intersight_vmedia_policy.vmedia.moid
}
