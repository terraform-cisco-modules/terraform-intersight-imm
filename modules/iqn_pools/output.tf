#____________________________________________________________
#
# Collect the moid of the IQN Pool as an Output
#____________________________________________________________

output "moid" {
  description = "IQN Pool Managed Object ID (moid)."
  value       = intersight_iqnpool_pool.iqn_pool.moid
}
