#_____________________________________________________________
#
# Collect the moid of the Port Policy > Mode
#_____________________________________________________________

output "moid" {
  description = "Intersight Port Policy > Mode Managed Object ID (moid)."
  value       = intersight_fabric_port_mode.port_mode.moid
}
