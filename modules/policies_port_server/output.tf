#_______________________________________________________________
#
# Collect the moid of the UCS Domain Port Policy - Server Ports
#_______________________________________________________________

output "moid" {
  description = "UCS Domain Port Policy - Server Ports Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_server_role.server_port)) : v => intersight_fabric_server_role.server_port[v].moid }
}
