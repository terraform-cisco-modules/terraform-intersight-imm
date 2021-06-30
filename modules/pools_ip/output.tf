#____________________________________________________________
#
# Collect the moid of the IP Pool as an Output
#____________________________________________________________

output "moid" {
  description = "IP Pool Managed Object ID (moid)."
  value       = intersight_ippool_pool.ip_pool.moid
}
