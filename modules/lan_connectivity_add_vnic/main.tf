#______________________________________________________________________
#
# Intersight LAN Connectivity - Add vNIC
# GUI Location: Policies > Create Policy > LAN Connectivity > Add vNIC
#______________________________________________________________________

resource "intersight_vnic_eth_if" "vnic" {
  failover_enabled   = var.enable_failover
  mac_address_type   = var.mac_address_allocation_type
  name               = var.name
  order              = var.placement_pci_order
  static_mac_address = var.mac_address_static
  cdn {
    value     = var.cdn_value
    nr_source = var.cdn_source
  }
  eth_adapter_policy {
    moid = var.eth_adapter_policy_moid
  }
  eth_qos_policy {
    moid = var.eth_qos_policy_moid
  }
  fabric_eth_network_control_policy {
    moid = var.eth_network_control_policy_moid
  }
  lan_connectivity_policy {
    moid = var.lan_connectivity_policy_moid
  }
  placement {
    id        = var.placement_slot_id
    pci_link  = var.placement_pci_link
    switch_id = var.placement_switch_id
    uplink    = var.placement_uplink_port
  }
  usnic_settings {
    cos                  = var.usnic_class_of_service
    nr_count             = var.usnic_number_of_usnics
    usnic_adapter_policy = var.usnic_adapter_policy_moid
  }
  vmq_settings {
    enabled             = var.vmq_enabled
    multi_queue_support = var.vmq_enable_virtual_machine_multi_queue
    num_interrupts      = var.vmq_number_of_interrupts
    num_vmqs            = var.vmq_number_of_virtual_machine_queues
    num_sub_vnics       = var.vmq_number_of_sub_vnics
    vmmq_adapter_policy = var.vmq_vmmq_adapter_policy_moid
  }
  dynamic "eth_network_policy" {
    for_each = var.eth_network_policy_moid
    content {
      moid = eth_network_policy.value
    }
  }
  dynamic "fabric_eth_network_group_policy" {
    for_each = var.eth_network_group_policy_moid
    content {
      moid = fabric_eth_network_group_policy.value
    }
  }
  dynamic "ip_lease" {
    for_each = var.ip_lease_moid
    content {
      moid = ip_lease.value
    }
  }
  dynamic "iscsi_boot_policy" {
    for_each = var.iscsi_boot_policy_moid
    content {
      moid = iscsi_boot_policy.value
    }
  }
  dynamic "mac_lease" {
    for_each = var.mac_lease_moid
    content {
      moid = mac_lease.value
    }
  }
  dynamic "mac_pool" {
    for_each = var.mac_address_pool_moid
    content {
      moid = mac_pool.value
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
