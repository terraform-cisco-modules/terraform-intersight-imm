#____________________________________________________________
#
# Collect the moid of the UCS Server Profile Template
#____________________________________________________________

output "moid" {
  description = "UCS Server Profile Template Managed Object ID (moid)."
  value       = intersight_server_profile_template.server_template.moid
}
