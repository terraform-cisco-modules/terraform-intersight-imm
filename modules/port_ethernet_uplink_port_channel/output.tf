#_____________________________________________________________
#
# Collect the moid of the UCS Domain LAN Port Channel Policy
#_____________________________________________________________

output "moid" {
  description = "UCS Domain LAN Port Channel Policy Managed Object ID (moid)."
  value       = intersight_fabric_uplink_pc_role.port_channel.moid
}
