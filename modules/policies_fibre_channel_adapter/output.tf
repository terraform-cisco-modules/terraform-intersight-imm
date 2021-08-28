#____________________________________________________________
#
# Collect the moid of the Fibre Channel (vHBA) Adapter Policy
#____________________________________________________________

output "moid" {
  description = "Fibre Channel (vNIC) Adapter Policy Managed Object ID (moid)."
  value       = intersight_vnic_fc_adapter_policy.vhba_adapter.moid
}
