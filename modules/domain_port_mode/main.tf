#____________________________________________________________
#
# Intersight UCS Domain Port Mode Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_fabric_port_mode" "port_mode" {
  custom_mode   = var.custom_mode
  port_id_end   = var.port_id_end
  port_id_start = var.port_id_start
  slot_id       = var.slot_id
  dynamic "port_policy" {
    for_each = var.port_policy_moid
    content {
      moid = port_policy.value.moid
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
