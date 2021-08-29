#________________________________________________________________
#
# Collect the moid of the Fibre Channel Qos Policy
#________________________________________________________________

output "moid" {
  description = "Fibre Channel Qos Policy Managed Object ID (moid)."
  value       = intersight_vnic_fc_qos_policy.vhba_qos.moid
}
