#____________________________________________________________
#
# Collect the moid of the Boot Order Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Boot Policy Managed Object ID (moid)."
  value       = intersight_boot_precision_policy.boot_order.moid
}
