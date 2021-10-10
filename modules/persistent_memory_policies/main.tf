#__________________________________________________________________
#
# Intersight Persistent Memory Policy
# GUI Location: Policies > Create Policy > Persistent Memory
#__________________________________________________________________

resource "intersight_memory_persistent_memory_policy" "persistent_memory" {
  description       = var.description
  management_mode   = var.management_mode
  name              = var.name
  retain_namespaces = var.retain_namespaces
  goals {
    memory_mode_percentage = var.memory_mode_percentage
    object_type            = "memory.PersistentMemoryGoal"
    persistent_memory_type = var.persistent_memory_type
    socket_id              = "All Sockets"
  }
  local_security {
    object_type       = "memory.PersistentMemoryLocalSecurity"
    enabled           = var.secure_passphrase == "" ? false : true
    secure_passphrase = var.secure_passphrase
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "logical_namespaces" {
    for_each = var.namespaces
    content {
      capacity         = logical_namespaces.value.capacity
      mode             = logical_namespaces.value.mode != null ? logical_namespaces.value.mode : "raw"
      name             = logical_namespaces.key
      object_type      = "memory.PersistentMemoryLocalSecurity"
      socket_id        = logical_namespaces.value.socket_id != null ? logical_namespaces.value.socket_id : 1
      socket_memory_id = logical_namespaces.value.socket_memory_id != null ? logical_namespaces.value.socket_memory_id : "Not Applicable"
    }
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
