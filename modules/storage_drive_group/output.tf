#___________________________________________________________________
#
# Collect the moid of the Storage Policy - Drive Group as an Output
#___________________________________________________________________

output "moid" {
  description = "Storage Policy - Drive Group Managed Object ID (moid)."
  value       = intersight_storage_drive_group.drive_group.moid
}
