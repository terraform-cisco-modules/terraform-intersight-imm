#____________________________________________________________
#
# Collect the moid of the Local User as an Output
#____________________________________________________________

output "moid" {
  description = "Local User Managed Object ID (moid)."
  value       = intersight_iam_end_point_user.user.moid
}
