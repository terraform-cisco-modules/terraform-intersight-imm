#____________________________________________________________
#
# Collect the moid of the iSCSI Static Target Policy
#____________________________________________________________

output "moid" {
  description = "iSCSI Static Target Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_static_target_policy.iscsi_static_target.moid
}
