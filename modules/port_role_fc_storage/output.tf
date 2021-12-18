#______________________________________________________________
#
# Collect the moid of the Port Role > FC Storage as an Output
#______________________________________________________________

output "moid" {
  description = "Port Role - FC Storage Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_fc_storage_role.port_role)) : v => intersight_fabric_fc_storage_role.port_role[v].moid }
}
