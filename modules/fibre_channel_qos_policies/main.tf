#__________________________________________________________________
#
# Intersight Fibre Channel QoS Policy
# GUI Location: Policies > Create Policy > Fibre Channel QoS
#__________________________________________________________________

resource "intersight_vnic_fc_qos_policy" "vhba_qos" {
  burst               = var.burst # FI-Attached
  cos                 = var.cos   # Standalone
  description         = var.description
  max_data_field_size = var.max_data_field_size # FI-Attached and Standalone
  name                = var.name
  rate_limit          = var.rate_limit # FI-Attached and Standalone
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
