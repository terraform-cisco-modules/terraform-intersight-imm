#____________________________________________________________
#
# Collect the moid of the Fabric VSAN as an Output
#____________________________________________________________

output "moid" {
  description = "Fabric VSAN Managed Object ID (moid)."
  value       = { for v in sort(keys(intersight_fabric_vsan.vsan)) : v => intersight_fabric_vsan.vsan[v].moid }
}
