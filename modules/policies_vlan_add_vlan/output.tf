#______________________________________________________________
#
# Collect the moid of the VLAN Policy > Add VLANs as an Output
#______________________________________________________________

output "vlan" {
  description = "VLAN Policy > Add VLANs Attributes."
  value = {
    moid = intersight_fabric_vlan.vlan.moid
    name = intersight_fabric_vlan.vlan.name
  }
}
