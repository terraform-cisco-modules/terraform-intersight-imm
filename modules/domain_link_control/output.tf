#____________________________________________________________
#
# Collect the moid of the Link Control Policy
#____________________________________________________________

output "moid" {
  description = "Link Control Policy Managed Object ID (moid)."
  value       = intersight_fabric_link_control_policy.link_control.moid
}
