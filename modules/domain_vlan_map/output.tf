#____________________________________________________________
#
# Collect the moid of the Fabric VLAN as an Output
#____________________________________________________________

output "vlan" {
  description = "Fabric VLAN Attributes."
  value = {
    for v in sort(keys(intersight_fabric_vlan.vlan_map)) : v => {
      moid = intersight_fabric_vlan.vlan_map[v].moid
      name = intersight_fabric_vlan.vlan_map[v].name
    }
  }
}
