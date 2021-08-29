#__________________________________________________________________
#
# Intersight Flow Control Policy
# GUI Location: Policies > Create Policy > Flow Control
#__________________________________________________________________

resource "intersight_fabric_flow_control_policy" "flow_control" {
  description                = var.description
  name                       = var.name
  priority_flow_control_mode = var.priority_flow_control_mode
  receive_direction          = var.receive_direction
  send_direction             = var.send_direction
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
