#_____________________________________________________________
#
# Collect the moid of the UCS Domain Port Policy as an Output
#_____________________________________________________________

output "moid" {
  description = "UCS Domain Port Policy Managed Object ID (moid)."
  value       = intersight_fabric_port_policy.port_policy.moid
}
