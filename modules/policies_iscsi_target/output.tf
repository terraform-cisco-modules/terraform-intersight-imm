#____________________________________________________________
#
# Collect the moid of the (vNIC) iSCSI Static Target Policy
#____________________________________________________________

output "moid" {
  description = "(vNIC) iSCSI Static Target Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_static_target_policy.vnic_iscsi_target.moid
}
