#____________________________________________________________
#
# Intersight Persistent Memory Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_memory_persistent_memory_policy" "persistent_memory" {
  description        = var.description
  management_mode    = var.management_mode
  name               = var.name
  retain_name_spaces = var.retain_name_spaces
  goals {
    object_type            = "memory.PersistentMemoryGoal"
    memory_mode_percentage = var.goals_memory_percentage
    persistent_memory_type = var.goals_persistent_memory_type
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
  dynamic "logical_name_spaces" {
    for_each = var.logical_name_spaces
    content {
      mode             = logical_name_spaces.value.mode
      object_type      = "memory.PersistentMemoryLocalSecurity"
      socket_id        = logical_name_spaces.value.socket_id
      socket_memory_id = logical_name_spaces.value.socket_memory_id
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = "server.Profile"
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
