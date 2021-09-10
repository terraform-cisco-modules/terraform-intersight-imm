#__________________________________________________________________
#
# Intersight Port Policy - Move the Slider for Port mode
# GUI Location: Policies > Create Policy > Port > Move the Slider
#__________________________________________________________________

resource "intersight_fabric_port_mode" "port_mode" {
  custom_mode   = var.custom_mode
  port_id_end   = element(var.port_list, 1)
  port_id_start = element(var.port_list, 0)
  slot_id       = var.slot_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
