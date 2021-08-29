#____________________________________________________________
#
# Intersight Ethernet (vNIC) Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_eth_if" "vnic" {
  failover_enabled   = var.failover_enabled
  mac_address_type   = var.mac_address_type
  name               = var.vnic_name
  order              = var.vnic_order
  static_mac_address = var.static_mac_address
  cdn {
    value     = var.cdn_name
    nr_source = var.cdn_source
  }
  eth_adapter_policy {
    moid = var.vnic_adapter_moid
  }
  eth_qos_policy {
    moid = var.vnic_qos_moid
  }
  fabric_eth_network_control_policy {
    moid = var.vnic_control_moid
  }
  fabric_eth_network_group_policy {
    moid = var.vnic_network_group_moid
  }
  lan_connectivity_policy {
    moid = var.lan_connectivity_moid
  }
  placement {
    id        = var.placement_slot_id
    pci_link  = var.placement_pci_link
    switch_id = var.placement_switch_id
    uplink    = var.placement_uplink
  }
  usnic_settings {
    cos                  = var.usnic_cos
    nr_count             = var.usnic_count
    usnic_adapter_policy = var.usnic_adapter_policy_moid
  }
  vmq_settings {
    enabled             = var.vmq_enabled
    multi_queue_support = var.vmq_multi_queue_support
    num_interrupts      = var.vmq_interrupts
    num_vmqs            = var.vmq_number_queues
    num_sub_vnics       = var.vmq_number_sub_vnics
    vmmq_adapter_policy = var.vmq_adapter_policy_moid
  }
  dynamic "eth_network_policy" {
    for_each = var.vnic_network_moid
    content {
      moid = eth_network_policy.value
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
    for_each = var.mac_pool_moid
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
