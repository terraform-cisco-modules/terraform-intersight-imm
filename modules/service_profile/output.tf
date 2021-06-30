#____________________________________________________________
#
# Collect the moid of the UCS Service Profile
#____________________________________________________________

output "domain_cluster_moid" {
  description = "UCS Service Profile Managed Object ID (moid)."
  value       = intersight_server_profile_template.service_profile.moid
}
