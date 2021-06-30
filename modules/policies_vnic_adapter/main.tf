#____________________________________________________________
#
# Intersight Ethernet (vNIC) Adapter Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_eth_adapter_policy" "vnic_adapter" {
  advanced_filter         = var.advanced_filter
  description             = var.description
  interrupt_scaling       = var.interrupt_scaling
  name                    = var.name
  rss_settings            = var.receive_side_scaling
  uplink_failback_timeout = var.uplink_failback_timeout
  arfs_settings {
    enabled = var.arfs_enable
  }
  completion_queue_settings {
    nr_count  = var.completion_queue_count
    ring_size = var.completion_ring_size
  }
  interrupt_settings {
    coalescing_time = var.interrupt_timer
    coalescing_type = var.interrupt_coalescing_type
    nr_count        = var.interrupt_interrupts
    mode            = var.interrupt_mode
  }
  nvgre_settings {
    enabled = var.nvgre_enable
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  roce_settings {
    class_of_service = var.roce_cos
    enabled          = var.roce_enable
    memory_regions   = var.roce_memory_regions
    queue_pairs      = var.roce_queue_pairs
    resource_groups  = var.roce_resource_groups
    nr_version       = var.roce_version
  }
  rss_hash_settings {
    ipv4_hash         = var.rss_hash_ipv4_hash
    ipv6_ext_hash     = var.rss_hash_ipv6_ext_hash
    ipv6_hash         = var.rss_hash_ipv6_hash
    tcp_ipv4_hash     = var.rss_hash_tcp_ipv4_hash
    tcp_ipv6_ext_hash = var.rss_hash_tcp_ipv6_ext_hash
    tcp_ipv6_hash     = var.rss_hash_tcp_ipv6_hash
    udp_ipv4_hash     = var.rss_hash_udp_ipv4_hash
    udp_ipv6_hash     = var.rss_hash_udp_ipv6_hash
  }
  rx_queue_settings {
    nr_count  = var.rx_queue_count
    ring_size = var.rx_ring_size
  }
  tcp_offload_settings {
    large_receive = var.tcp_offload_large_recieve
    large_send    = var.tcp_offload_large_send
    rx_checksum   = var.tcp_offload_rx_checksum
    tx_checksum   = var.tcp_offload_tx_checksum
  }
  tx_queue_settings {
    nr_count  = var.tx_queue_count
    ring_size = var.tx_ring_size
  }
  vxlan_settings {
    enabled = var.vxlan_enable
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
