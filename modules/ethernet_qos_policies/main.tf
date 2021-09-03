#__________________________________________________________________
#
# Intersight Ethernet QoS Policy
# GUI Location: Policies > Create Policy > Ethernet QoS
#__________________________________________________________________

resource "intersight_vnic_eth_qos_policy" "vnic_qos" {
  description    = var.description
  name           = var.name
  burst          = var.burst
  cos            = var.cos
  mtu            = var.mtu
  priority       = var.priority
  rate_limit     = var.rate_limit
  trust_host_cos = var.enable_trust_host_cos
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
