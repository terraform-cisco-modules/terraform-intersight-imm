#____________________________________________________________
#
# Intersight Fibre Channel (vHBA) Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_fc_if" "vhba" {
  name                = var.name
  order               = var.placement_pci_order
  persistent_bindings = var.persistent_lun_bindings
  static_wwpn_address = var.wwpn_static_address
  type                = var.vhba_type
  wwpn_address_type   = var.wwpn_allocation_type
  fc_adapter_policy {
    moid = var.fc_adapter_policy_moid
  }
  fc_network_policy {
    moid = var.fc_network_policy_moid
  }
  fc_qos_policy {
    moid = var.fc_qos_policy_moid
  }
  san_connectivity_policy {
    moid = var.san_connectivity_policy_moid
  }
  placement {
    id        = var.placement_slot_id
    pci_link  = var.placement_pci_link
    switch_id = var.placement_switch_id
    uplink    = var.placement_uplink_port
  }
  dynamic "wwpn_lease" {
    for_each = var.wwpn_lease_moid
    content {
      moid = wwpn_lease.value
    }
  }
  dynamic "wwpn_pool" {
    for_each = var.wwpn_pool_moid
    content {
      moid = wwpn_pool.value
    }
  }
}
