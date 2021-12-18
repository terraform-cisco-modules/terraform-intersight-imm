#____________________________________________________________
#
# Intersight UCS Server Profile Resource
# GUI Location: Profiles > UCS Server Profile > Create
#____________________________________________________________

resource "intersight_server_profile" "server_profile" {
  action                 = var.action
  description            = var.description
  name                   = var.name
  server_assignment_mode = var.server_assignment_mode
  static_uuid_address    = var.static_uuid_address
  target_platform        = var.target_platform
  type                   = var.type
  uuid_address_type = length(
    var.uuid_pool
  ) > 0 ? "POOL" : var.static_uuid_address != "" ? "STATIC" : "NONE"
  wait_for_completion = var.wait_for_completion
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "assigned_server" {
    for_each = var.assigned_server
    content {
      moid        = assigned_server.value.moid
      object_type = assigned_server.value.object_type
    }
  }
  dynamic "associated_server_pool" {
    for_each = var.associated_server_pool
    content {
      moid        = assigned_server.value.moid
      object_type = "resourcepool.Pool"
    }
  }
  dynamic "policy_bucket" {
    for_each = [for s in var.policy_bucket : s if s != null]
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
  dynamic "uuid_pool" {
    for_each = var.uuid_pool
    content {
      moid        = uuid_pool.value.moid
      object_type = "uuidpool.Pool"
    }
  }
}
