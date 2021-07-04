#____________________________________________________________
#
# Intersight System QoS Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_system_qos_policy" "system_qos" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
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


resource "intersight_fabric_system_qos_policy" "system_qos_classes" {
  depends_on = [
    intersight_fabric_system_qos_policy.system_qos
  ]
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "classes" {
    for_each = var.classes
    content {
      admin_state        = classes.value.admin_state
      bandwidth_percent  = classes.value.bandwidth_percent
      cos                = classes.value.cos
      mtu                = classes.value.mtu
      multicast_optimize = classes.value.multicast_optimize
      name               = classes.value.name
      object_type        = "fabric.QosClass"
      packet_drop        = classes.value.packet_drop
      weight             = classes.value.weight
    }
  }
  /*
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
*/
}
