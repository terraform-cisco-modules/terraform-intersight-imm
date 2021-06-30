#_____________________________________________________________
#
# Collect the moid of the UCS Domain SAN Port Channel Policy
#_____________________________________________________________

output "moid" {
  description = "UCS Domain SAN Port Channel Policy Managed Object ID (moid)."
  value       = intersight_fabric_fc_uplink_pc_role.port_channel.moid
}
