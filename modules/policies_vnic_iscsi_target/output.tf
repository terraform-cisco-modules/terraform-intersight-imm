#____________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) iSCSI Target Policy
#____________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) iSCSI Target Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_static_target_policy.vnic_iscsi_target.moid
}
