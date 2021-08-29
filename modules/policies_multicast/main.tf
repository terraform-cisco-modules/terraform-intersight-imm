#__________________________________________________________________
#
# Intersight Multicast Policy
# GUI Location: Policies > Create Policy > Multicast
#__________________________________________________________________

resource "intersight_fabric_multicast_policy" "multicast" {
  description             = var.description
  name                    = var.name
  querier_ip_address      = var.querier_ip_address
  querier_ip_address_peer = var.querier_ip_address_peer
  querier_state           = var.querier_state
  snooping_state          = var.snooping_state
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
