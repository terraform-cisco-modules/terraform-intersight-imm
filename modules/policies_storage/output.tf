#____________________________________________________________
#
# Collect the moid of the Storage Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Storage Policy Managed Object ID (moid)."
  value       = intersight_storage_storage_policy.storage.moid
}
