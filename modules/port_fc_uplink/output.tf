#______________________________________________________________
#
# Collect the moid of the Port Policy > FC Uplink as an Output
#______________________________________________________________

output "moid" {
  description = "Port Policy > FC Uplink Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_fc_uplink_role.san_uplink)) : v => intersight_fabric_fc_uplink_role.san_uplink[v].moid }
}
