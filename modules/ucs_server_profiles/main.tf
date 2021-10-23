#____________________________________________________________
#
# Intersight UCS Server Profile Resource
# GUI Location: Profiles > UCS Server Profile > Create
#____________________________________________________________

resource "intersight_server_profile" "server_profile" {
  action              = var.action
  description         = var.description
  name                = var.name
  static_uuid_address = var.static_uuid_address
  target_platform     = var.target_platform
  type                = var.type
  uuid_address_type   = var.uuid_pool != "" ? "POOL" : var.static_uuid_address != "" ? "STATIC" : "NONE"
  uuid_pool = {
    moid        = var.uuid_pool
    object_type = "uuidpool.Pool"
  }
  wait_for_completion = var.wait_for_completion
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "assigned_server" {
    for_each = var.assigned_server
    content {
      moid        = assigned_server.value.moid
      object_type = assigned_server.value.object_type
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
      moid = src_template.value
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
