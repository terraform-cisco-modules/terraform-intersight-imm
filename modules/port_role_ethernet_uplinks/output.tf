#____________________________________________________________
#
# Collect the moid of the LAN Uplink Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Port Role - Ethernet Uplink Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_uplink_role.port_role)) : v => intersight_fabric_uplink_role.port_role[v].moid }
}
