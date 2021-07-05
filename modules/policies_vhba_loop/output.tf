#________________________________________________________________
#
# Collect the moid of the Fibre Channel (vHBA) Policy
#________________________________________________________________

output "moid" {
  description = "Fibre Channel (vHBA) Policy Managed Object ID (moid)."
  value = { for v in sort(keys(module.vhba_loop)) : v => module.vhba_loop[v].moid }
}
