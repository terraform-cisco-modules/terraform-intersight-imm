#____________________________________________________________
#
# Collect the moid of the Disk Group Policy
#____________________________________________________________

output "moid" {
  description = "Disk Group Policy Managed Object ID (moid)."
  value       = intersight_storage_disk_group_policy.disk_group.moid
}

output "name" {
  description = "Disk Group Policy Name."
  value       = intersight_storage_disk_group_policy.disk_group.name
}
