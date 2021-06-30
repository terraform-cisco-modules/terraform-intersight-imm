#____________________________________________________________
#
# Collect the moid of the SAN Uplink Policy as an Output
#____________________________________________________________

output "moid" {
  description = "SAN Uplink Policy Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_fc_uplink_role.san_uplink)) : v => intersight_fabric_fc_uplink_role.san_uplink[v].moid }
}
