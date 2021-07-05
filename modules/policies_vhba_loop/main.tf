#____________________________________________________________
#
# Intersight Fibre Channel (vHBA) Policy Loop
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "vhba_loop" {
  for_each                = var.fabric_vhba
  source                  = "terraform-cisco-modules/imm/intersight//modules/policies_vhba"
  persistent_lun_bindings = var.persistent_lun_bindings
  placement_pci_link      = var.placement_pci_link
  placement_slot_id       = var.placement_slot_id
  placement_switch_id     = each.value.switch_id
  placement_uplink        = var.placement_uplink
  san_connectivity_moid   = var.san_connectivity_moid
  static_wwpn_address     = var.static_wwpn_address
  vhba_adapter_moid       = var.vhba_adapter_moid
  vhba_network_moid       = each.value.network
  vhba_name               = each.value.vhba_name
  vhba_qos_moid           = var.vhba_qos_moid
  vhba_order              = each.value.vhba_order
  vhba_type               = var.vhba_type
  wwpn_address_type       = var.wwpn_address_type
  wwpn_lease_moid         = var.wwpn_lease_moid
  wwpn_pool_moid          = [each.value.wwpn_pool]
}
