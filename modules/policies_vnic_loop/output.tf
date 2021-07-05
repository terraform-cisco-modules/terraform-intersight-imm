#________________________________________________________________
#
# Collect the moid of the Ethernet (vNIC) Policy
#________________________________________________________________

output "moid" {
  description = "Ethernet (vNIC) Policy Managed Object ID (moid)."
  value = { for v in sort(keys(module.vnic_loop)) : v => module.vnic_loop[v].moid }
}
