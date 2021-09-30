#____________________________________________________________________________________________
#
# Collect the moid of the Operating System Software Configuration Utility (SCU) as an Output
#____________________________________________________________________________________________

output "moid" {
  description = "Operating System Software Configuration Utility (SCU) Managed Object ID (moid)."
  value       = intersight_firmware_server_configuration_utility_distributable.scu.moid
}
