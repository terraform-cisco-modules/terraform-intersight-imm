#____________________________________________________________
#
# Collect the moid of the Link Aggregation Policy as an Output
#____________________________________________________________

output "moid" {
  description = "Link Aggregation Policy Managed Object ID (moid)."
  value       = intersight_fabric_link_aggregation_policy.link_aggregation.moid
}
