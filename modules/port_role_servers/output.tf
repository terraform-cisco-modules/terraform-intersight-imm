#_______________________________________________________________
#
# Collect the moid of the UCS Domain Port Policy - Server Ports
#_______________________________________________________________

output "moid" {
  description = "Role Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_server_role.port_role)) : v => intersight_fabric_server_role.port_role[v].moid }
}
