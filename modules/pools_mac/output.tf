
#____________________________________________________________
#
# Collect the moid of the MAC Pool as an Output
#____________________________________________________________

output "moid" {
  description = "MAC Pool Managed Object ID (moid)."
  value       = intersight_macpool_pool.mac_pool.moid
}
