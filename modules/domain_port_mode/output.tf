#_____________________________________________________________
#
# Collect the moid of the UCS Domain Port Mode Policy
#_____________________________________________________________

output "moid" {
  description = "UCS Domain Port Mode Policy Managed Object ID (moid)."
  value       = intersight_fabric_port_mode.port_mode.moid
}
