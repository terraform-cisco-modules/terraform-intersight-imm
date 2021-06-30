#______________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) iSCSI Adapter Policy
#______________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) iSCSI Adapter Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_adapter_policy.vnic_iscsi_adapter.moid
}
