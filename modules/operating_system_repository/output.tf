#__________________________________________________________________
#
# Collect the moid of the Operating System Repository as an Output
#__________________________________________________________________

output "moid" {
  description = "Operating System Repository Managed Object ID (moid)."
  value       = intersight_softwarerepository_operating_system_file.repository.moid
}
