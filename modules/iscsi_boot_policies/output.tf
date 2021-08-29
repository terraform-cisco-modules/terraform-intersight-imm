#____________________________________________________________
#
# Collect the moid of the iSCSI Boot Policy
#____________________________________________________________

output "moid" {
  description = "iSCSI Boot Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_boot_policy.iscsi_boot.moid
}
