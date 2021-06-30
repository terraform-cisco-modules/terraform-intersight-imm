#____________________________________________________________
#
# Intersight UCS Domain Profile Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_fabric_switch_profile" "switch_profile" {
  description = var.description
  action      = var.switch_action
  name        = var.name
  type        = var.switch_type
  dynamic "assigned_switch" {
    for_each = var.assigned_switch
    content {
      moid = assigned_switch.value.moid
    }
  }
  dynamic "switch_cluster_profile" {
    for_each = var.cluster_moid
    content {
      moid = switch_cluster_profile.value.moid
    }
  }
  dynamic "policy_bucket" {
    for_each = var.policy_bucket
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
