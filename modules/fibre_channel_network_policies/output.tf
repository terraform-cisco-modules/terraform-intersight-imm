#____________________________________________________________
#
# Collect the moid of the Fibre Channel Network Policy
#____________________________________________________________

output "moid" {
  description = "Fibre Channel Network Policy Managed Object ID (moid)."
  value       = intersight_vnic_fc_network_policy.vhba_policy.moid
}
