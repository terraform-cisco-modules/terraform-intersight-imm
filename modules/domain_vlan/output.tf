#____________________________________________________________
#
# Collect the moid of the Fabric VLAN as an Output
#____________________________________________________________

output "vlan" {
  description = "Fabric VLAN Managed Object ID (moid)."
  value = {
    moid = intersight_fabric_vlan.vlan.moid
    name = intersight_fabric_vlan.vlan.name
  }
}
