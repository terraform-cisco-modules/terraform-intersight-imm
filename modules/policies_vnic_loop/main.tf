#____________________________________________________________
#
# Intersight Ethernet (vNIC) Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "vnic_loop" {
  for_each                  = var.fabric_vnic
  source                    = "terraform-cisco-modules/imm/intersight//modules/policies_vnic"
  cdn_name                  = each.value.vnic_name
  cdn_source                = var.cdn_source
  failover_enabled          = var.failover_enabled
  ip_lease_moid             = var.ip_lease_moid
  iscsi_boot_policy_moid    = var.iscsi_boot_policy_moid
  lan_connectivity_moid     = var.lan_connectivity_moid
  mac_address_type          = var.mac_address_type
  mac_lease_moid            = var.mac_lease_moid
  mac_pool_moid             = [each.value.mac_pool]
  placement_pci_link        = var.placement_pci_link
  placement_uplink          = var.placement_uplink
  placement_slot_id         = var.placement_slot_id
  placement_switch_id       = each.value.switch_id
  static_mac_address        = var.static_mac_address
  usnic_cos                 = var.usnic_cos
  usnic_count               = var.usnic_count
  usnic_adapter_policy_moid = var.usnic_adapter_policy_moid
  vmq_enabled               = var.vmq_enabled
  vmq_interrupts            = var.vmq_interrupts
  vmq_multi_queue_support   = var.vmq_multi_queue_support
  vmq_number_queues         = var.vmq_number_queues
  vmq_number_sub_vnics      = var.vmq_number_sub_vnics
  vmq_adapter_policy_moid   = var.vmq_adapter_policy_moid
  vnic_adapter_moid         = each.value.vnic_adapter_moid
  vnic_control_moid         = each.value.vnic_control_moid
  vnic_name                 = each.value.vnic_name
  vnic_network_moid         = each.value.vnic_network_moid
  vnic_network_group_moid   = each.value.vnic_vlans_moid
  vnic_order                = each.value.vnic_order
  vnic_qos_moid             = each.value.vnic_qos_moid
}
