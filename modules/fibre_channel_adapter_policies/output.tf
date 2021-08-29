#____________________________________________________________
#
# Collect the moid of the Fibre Channel Adapter Policy
#____________________________________________________________

output "moid" {
  description = "Fibre Channel Adapter Policy Managed Object ID (moid)."
  value       = intersight_vnic_fc_adapter_policy.vhba_adapter.moid
}
