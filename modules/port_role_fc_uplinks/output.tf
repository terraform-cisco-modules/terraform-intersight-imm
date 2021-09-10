#______________________________________________________________
#
# Collect the moid of the Port Role > FC Uplink as an Output
#______________________________________________________________

output "moid" {
  description = "Port Role - Fibre-Channel Uplink Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_fc_uplink_role.port_role)) : v => intersight_fabric_fc_uplink_role.port_role[v].moid }
}
