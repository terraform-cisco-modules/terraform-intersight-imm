#_______________________________________________________________
#
# Collect the moid of the Operating System Install as an Output
#_______________________________________________________________

output "moid" {
  description = "Operating System Install Managed Object ID (moid)."
  value       = intersight_os_install.install.moid
}
