#______________________________________________________________
#
# Collect the moid of the iSCSI Adapter Policy
#______________________________________________________________

output "moid" {
  description = "iSCSI Adapter Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_adapter_policy.iscsi_adapter.moid
}
