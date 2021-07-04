#____________________________________________________________
#
# Intersight UCS Server Profile Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_server_profile" "server_profile" {
  action          = var.action
  description     = var.description
  name            = var.name
  target_platform = var.target_platform
  type            = var.type
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "assigned_server" {
    for_each = var.assigned_server
    content {
      moid = assigned_server.value.moid
    }
  }
  dynamic "policy_bucket" {
    for_each = var.policy_bucket
    content {
      moid        = policy_bucket.value.moid
      object_type = policy_bucket.value.object_type
    }
  }
  dynamic "src_template" {
    for_each = var.src_template
    content {
      moid = src_template.value.moid
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
