#__________________________________________________________________
#
# Intersight Link Aggregation Policy
# GUI Location: Policies > Create Policy > Link Aggregation
#__________________________________________________________________

resource "intersight_fabric_link_aggregation_policy" "link_aggregation" {
  description        = var.description
  name               = var.name
  lacp_rate          = var.lacp_rate
  suspend_individual = var.suspend_individual
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
