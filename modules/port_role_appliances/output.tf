#____________________________________________________________
#
# Collect the moid of the Port Role - Appliance as an Output
#____________________________________________________________

output "moid" {
  description = "Port Role - Appliance Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_appliance_role.port_role)) : v => intersight_fabric_appliance_role.port_role[v].moid }
}
