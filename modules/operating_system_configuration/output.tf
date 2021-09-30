#____________________________________________________________________________________________
#
# Collect the moid of the Operating System Configuration File as an Output
#____________________________________________________________________________________________

output "moid" {
  description = "Operating System Configuration File Managed Object ID (moid)."
  value       = intersight_os_configuration_file.config.moid
}
