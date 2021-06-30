#_____________________________________________________________
#
# Collect the moid of the UCS Domain Server Port Policy
#_____________________________________________________________

output "moid" {
  description = "UCS Domain Server Port Policy Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_server_role.server_port)) : v => intersight_fabric_server_role.server_port[v].moid }
}
