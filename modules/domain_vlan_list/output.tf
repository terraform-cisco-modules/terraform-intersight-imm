#____________________________________________________________
#
# Collect the moid of the Fabric VLAN as an Output
#____________________________________________________________

output "vlan" {
  description = "Fabric VLAN Attributes."
  value = {
    for v in sort(keys(intersight_fabric_vlan.vlan_list)) : v => {
      moid = intersight_fabric_vlan.vlan_list[v].moid
      name = intersight_fabric_vlan.vlan_list[v].name
    }
  }
}
