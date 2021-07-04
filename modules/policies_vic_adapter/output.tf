#____________________________________________________________
#
# Collect the moid of the Adapter (VIC) Configuration Policy
#____________________________________________________________

output "moid" {
  description = "Adapter (VIC) Configuration Policy Managed Object ID (moid)."
  value       = intersight_adapter_config_policy.vic_adapter.moid
}
