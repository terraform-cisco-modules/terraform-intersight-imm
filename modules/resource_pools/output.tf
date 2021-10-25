
#____________________________________________________________
#
# Collect the moid of the Resource Pool as an Output
#____________________________________________________________

output "moid" {
  description = "Resource Pool Managed Object ID (moid)."
  value       = intersight_resourcepool_pool.resource_pool.moid
}
