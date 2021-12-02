#____________________________________________________________
#
# Example Intersight Ethernet Adapter Policy Module
# GUI Location: Policies > Create Policy > Ethernet Adapter
#____________________________________________________________

#________________________________________________
#
# The following Examples only shows modifications
# To the default Policy.  To see all settings
# Refer to the example at the bottom of this
# Page, where a full default policy is shown.
#________________________________________________

module "ethernet_adapter_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies"
  description = "vNIC Adapter Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}

module "ethernet_adapter_linux_nvme_roce" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source = "terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies"
  # Completion Settings - Reduce Queue Count
  completion_queue_count = 2
  description            = "Linux NVMe RoCE vNIC Adapter Example."
  # Interrupt Settings - Increase Interrupts
  interrupt_interrupts = 256
  # Enable RoCE
  roce_enable          = true
  roce_memory_regions  = 131072
  roce_queue_pairs     = 256
  roce_resource_groups = 4
  # Reduce Recieve Queue Count
  rx_queue_count = 1
  name           = "linux_nvme_roce"
  org_moid       = local.org_moid
  tags           = var.tags
}

module "ethernet_adapter_vmware" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source = "terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies"
  # Completion Settings - Reduce Queue Count
  completion_queue_count = 2
  description            = "VMware vNIC Adapter Example."
  # Interrupt Settings - Reduce Interrupts
  interrupt_interrupts = 4
  # Disable Receive Side Scaling
  receive_side_scaling = false
  name                 = "vmware"
  org_moid             = local.org_moid
  tags                 = var.tags
}

module "ethernet_adapter_windows" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies"
  description = "Windows vNIC Adapter Example (It is the Same as Default)."
  name        = "windows_vnic_adapter"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

The Example Below shows all of the default options.  This is shown as an example to show options to change these settings

module "ethernet_adapter_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source       = "terraform-cisco-modules/imm/intersight//modules/ethernet_adapter_policies"

  # Enable Advanced Filter
  advanced_filter = false

  # Enable Accelerated Receive Flow Steering
  arfs_enable = false

  # Completion Settings
  completion_queue_count = 5
  completion_ring_size   = 1

  # Enable GENEVE
  geneve_enabled = false

  description  = "Default vNIC Adapter Example."

  # Enable Interrupt Scaling
  interrupt_scaling = false

  # Interrupt Settings
  interrupt_coalescing_type = "MIN"
  interrupt_interrupts      = 8
  interrupt_mode            = "MSIx"
  interrupt_timer           = 125

  name         = "vnic_adapter"

  # Enable Network Virtualization using Generic Routing Encaplulation
  nvgre_enable = false

  # Receive Side Scaling Settings
  receive_side_scaling        = true
  rss_hash_ipv4_hash          = true
  rss_hash_ipv6_ext_hash      = false
  rss_hash_ipv6_hash          = true
  rss_hash_tcp_ipv4_hash      = true
  rss_hash_tcp_ipv6_ext_hash  = false
  rss_hash_tcp_ipv6_hash      = true
  rss_hash_udp_ipv4_hash      = false
  rss_hash_udp_ipv6_hash      = false

  # RoCE Settings - RDMA over Converged Ethernet
  roce_cos              = 5
  roce_enable           = false
  roce_memory_regions   = 0
  roce_queue_pairs      = 0
  roce_resource_groups  = 0
  roce_version          = 1

  # Recieve Settings
  rx_queue_count  = 4
  rx_ring_size    = 512

  org_moid     = local.org_moid
  tags         = var.tags

  # TCP Offload Settings
  tcp_offload_large_recieve = true
  tcp_offload_large_send    = true
  tcp_offload_rx_checksum   = true
  tcp_offload_tx_checksum   = true

  # Transmit Settings
  tx_queue_count  = 1
  tx_ring_size    = 256

  # Uplink Fallback
  uplink_failback_timeout = 5

  # Enable VxLAN
  vxlan_enable = false

}

*/
