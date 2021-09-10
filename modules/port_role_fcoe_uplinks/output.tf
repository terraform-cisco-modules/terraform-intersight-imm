#______________________________________________________________
#
# Collect the moid of the Port Role - FCoE Uplink as an Output
#______________________________________________________________

output "moid" {
  description = "Port Role - FCoE Uplink Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_fcoe_uplink_role.port_role)) : v => intersight_fabric_fcoe_uplink_role.port_role[v].moid }
}
