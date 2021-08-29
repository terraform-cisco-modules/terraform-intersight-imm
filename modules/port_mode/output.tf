#_____________________________________________________________
#
# Collect the moid of the UCS Domain Port Policy > Mode
#_____________________________________________________________

output "moid" {
  description = "UCS Domain Port Policy > Mode Managed Object ID (moid)."
  value       = intersight_fabric_port_mode.port_mode.moid
}
