#____________________________________________________________
#
# Intersight UCS Domain Profile - Switch Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_fabric_switch_profile" "switch_profile" {
  action      = var.action
  description = var.description
  name        = var.name
  type        = var.switch_type
  switch_cluster_profile {
    moid = var.cluster_moid
  }
  dynamic "assigned_switch" {
    for_each = var.assigned_switch
    content {
      moid = assigned_switch.value
    }
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
