#____________________________________________________________
#
# Collect the moid of the Fabric VLAN as an Output
#____________________________________________________________

output "moid" {
  description = "Fabric VLAN Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_vlan.vlan_map)) : v => intersight_fabric_vlan.vlan_map[v].moid }
}
