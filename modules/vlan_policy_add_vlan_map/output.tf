#______________________________________________________________
#
# Collect the moid of the VLAN Policy > Add VLANs as an Output
#______________________________________________________________

output "vlan" {
  description = "VLAN Policy > Add VLANs Attributes."
  value = {
    for v in sort(keys(intersight_fabric_vlan.vlan_map)) : v => {
      moid = intersight_fabric_vlan.vlan_map[v].moid
      name = intersight_fabric_vlan.vlan_map[v].name
    }
  }
}
