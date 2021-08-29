#____________________________________________________________
#
# Collect the moid of the LAN Uplink Policy as an Output
#____________________________________________________________

output "moid" {
  description = "LAN Uplink Policy Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_uplink_role.lan_uplink)) : v => intersight_fabric_uplink_role.lan_uplink[v].moid }
}
