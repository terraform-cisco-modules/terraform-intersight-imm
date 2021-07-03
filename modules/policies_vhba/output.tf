#________________________________________________________________
#
# Collect the moid of the Fibre Channel (vHBA) Policy
#________________________________________________________________

output "moid" {
  description = "Fibre Channel (vHBA) Policy Managed Object ID (moid)."
  value       = intersight_vnic_fc_if.vhba.moid
}
