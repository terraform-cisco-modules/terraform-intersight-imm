#________________________________________________________________
#
# Collect the moid of the Fibre Channel (vHBA) Qos Policy
#________________________________________________________________

output "moid" {
  description = "Fibre Channel (vHBA) Qos Policy Managed Object ID (moid)."
  value       = intersight_vnic_fc_qos_policy.vhba_qos.moid
}
