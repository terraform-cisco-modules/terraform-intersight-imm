#____________________________________________________________
#
# Collect the moid of the Device Connector Policy.
#____________________________________________________________

output "moid" {
  description = "Device Connector Policy Managed Object ID (moid)."
  value       = intersight_deviceconnector_policy.device_connector.moid
}
