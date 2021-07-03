#____________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) iSCSI Boot Policy
#____________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) iSCSI Boot Policy Managed Object ID (moid)."
  value       = intersight_vnic_iscsi_boot_policy.vnic_iscsi_boot.moid
}
