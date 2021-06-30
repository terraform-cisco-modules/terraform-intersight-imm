#____________________________________________________________
#
# Intersight Multicast Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_multicast_policy" "multicast" {
  description        = var.description
  name               = var.name
  querier_ip_address = var.querier_ip
  querier_state      = var.querier_state
  snooping_state     = var.snooping_state
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
