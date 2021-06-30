
#____________________________________________________________
#
# Collect the moid of the UUID Pool as an Output
#____________________________________________________________

output "moid" {
  description = "UUID Pool Managed Object ID (moid)."
  value       = intersight_uuidpool_pool.uuid_pool.moid
}
