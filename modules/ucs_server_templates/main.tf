#____________________________________________________________
#
# Intersight UCS Server Profile Template Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_server_profile_template" "server_template" {
  action            = var.action
  description       = var.description
  name              = var.name
  target_platform   = var.target_platform
  uuid_address_type = var.uuid_pool != "" ? "POOL" : "NONE"
  uuid_pool = {
    moid        = var.uuid_pool
    object_type = "uuidpool.Pool"
  }
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "policy_bucket" {
    for_each = [for s in var.policy_bucket : s if s != null]
    content {
      moid        = policy_bucket.value.moid
      object_type = policy_bucket.value.object_type
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
