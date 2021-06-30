#____________________________________________________________
#
# Intersight Ethernet (vNIC) Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_eth_if" "vnic" {
  failover_enabled = var.failover
  # iscsi_ip_v4_address_allocation_type = var.iscsi_ip_allocation
  # iscsi_ipv4_address                  = var.iscsi_ip_address
  mac_address_type   = var.mac_address_type
  name               = var.vnic_name
  order              = var.order
  standby_vif_id     = var.standby_vif_id
  static_mac_address = var.static_mac_address
  vif_id             = var.vif_id
  cdn {
    value     = var.cdn_name
    nr_source = var.cdn_source
  }
  placement {
    id        = var.placement_slot_id
    pci_link  = var.placement_pci_link
    switch_id = var.placement_switch_id
    uplink    = var.placement_pci_order
  }
  usnic_settings {
    cos                  = var.usnic_cos
    nr_count             = var.usnic_count
    usnic_adapter_policy = var.usnic_adapter_policy_moid
  }
  vmq_settings {
    enabled             = var.vmq_enabled
    multi_queue_support = var.vmq_queue
    num_interrupts      = var.vmq_interrupts
    num_vmqs            = var.vmq_number_queues
    num_sub_vnics       = var.vmq_number_sub_vnics
    vmmq_adapter_policy = var.vmq_adapter_policy_moid
  }
  dynamic "eth_adapter_policy" {
    for_each = var.vnic_adapter_moid
    content {
      moid = eth_adapter_policy.value.moid
    }
  }
  dynamic "eth_network_policy" {
    for_each = var.vnic_network_moid
    content {
      moid = eth_network_policy.value.moid
    }
  }
  dynamic "eth_qos_policy" {
    for_each = var.vnic_qos_moid
    content {
      moid = eth_qos_policy.value.moid
    }
  }
  dynamic "fabric_eth_network_control_policy" {
    for_each = var.vnic_control_moid
    content {
      moid = fabric_eth_network_group_policy.value.moid
    }
  }
  dynamic "fabric_eth_network_group_policy" {
    for_each = var.vnic_vlan_group_moid
    content {
      moid = fabric_eth_network_group_policy.value.moid
    }
  }
  dynamic "ip_lease" {
    for_each = var.ip_lease_moid
    content {
      moid = ip_lease.value.moid
    }
  }
  # dynamic "iscsi_boot_policy" {
  #   for_each = var.iscsi_boot_policy_moid
  #   content {
  #     moid  = iscsi_boot_policy.value.moid
  #   }
  # }
  # dynamic "iscsi_ip_v4_config" {
  #   for_each = var.iscsi_boot_policy_moid
  #   content {
  #     gateway       = iscsi_ip_v4_config.value.gateway
  #     netmask       = iscsi_ip_v4_config.value.netmask
  #     primary_dns   = iscsi_ip_v4_config.value.primary_dns
  #     secondary_dns = iscsi_ip_v4_config.value.secondary_dns
  #   }
  # }
  dynamic "lan_connectivity_policy" {
    for_each = var.lan_connectivity_moid
    content {
      moid        = lan_connectivity_policy.value.moid
      object_type = "vnic.LanConnectivityPolicy"
    }
  }
  dynamic "mac_lease" {
    for_each = var.mac_lease_moid
    content {
      moid = mac_lease.value.moid
    }
  }
  dynamic "mac_pool" {
    for_each = var.mac_pool_moid
    content {
      moid = mac_pool.value.moid
    }
  }
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = "server.Profile"
    }
  }
  dynamic "sp_nics" {
    for_each = var.sp_nics_moid
    content {
      moid = sp_nics.value.moid
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
