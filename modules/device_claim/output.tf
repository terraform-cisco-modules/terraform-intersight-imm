#____________________________________________________________
#
# Collect the moid of the Claim Target as an Output
#____________________________________________________________

output "moid" {
  description = "Device Claim/Claim Target Managed Object ID (moid)."
  value       = intersight_appliance_device_claim.claim_target.moid
}
