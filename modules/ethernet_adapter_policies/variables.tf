#____________________________________________________________
#
# Ethernet Adapter Policy Variables Section.
#____________________________________________________________

variable "completion_queue_count" {
  default     = 5
  description = "The number of completion queue resources to allocate. In general, the number of completion queue resources to allocate is equal to the number of transmit queue resources plus the number of receive queue resources.  Range is 1-2000."
  type        = number
}

variable "completion_ring_size" {
  default     = 1
  description = "The number of descriptors in each completion queue.  Range is 1-256."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_accelerated_receive_flow_steering" {
  default     = false
  description = "Status of Accelerated Receive Flow Steering on the virtual ethernet interface."
  type        = bool
}

variable "enable_advanced_filter" {
  default     = false
  description = "Enables advanced filtering on the interface."
  type        = bool
}

variable "enable_geneve_offload" {
  default     = false
  description = "GENEVE offload protocol allows you to create logical networks that span physical network boundaries by allowing any information to be encoded in a packet and passed between tunnel endpoints."
  type        = bool
}

variable "enable_interrupt_scaling" {
  default     = false
  description = "Enables Interrupt Scaling on the interface."
  type        = bool
}

variable "enable_nvgre_offload" {
  default     = false
  description = "Status of the Network Virtualization using Generic Routing Encapsulation on the virtual ethernet interface."
  type        = bool
}

variable "enable_vxlan_offload" {
  default     = false
  description = "Status of the Virtual Extensible LAN Protocol on the virtual ethernet interface."
  type        = bool
}

variable "interrupt_coalescing_type" {
  default     = "MIN"
  description = <<-EOT
  Interrupt Coalescing Type. This can be one of the following:- MIN - The system waits for the time specified in the Coalescing Time field before sending another interrupt event IDLE - The system does not send an interrupt until there is a period of no activity lasting as least as long as the time specified in the Coalescing Time field.  Options are:
  * IDLE
  * MIN
  EOT
  type        = string
}

variable "interrupt_mode" {
  default     = "MSIx"
  description = <<-EOT
  The preferred driver interrupt mode. This can be one of the following:
  * INTx - Line-based interrupt (INTx) mechanism similar to the one used in Legacy systems.
  * MSI - Message Signaled Interrupt (MSI) mechanism that treats messages as interrupts.
  * MSIx - Message Signaled Interrupt mechanism with the optional extension (MSIx).
  MSIx is the recommended and default option.
  EOT
  type        = string
}

variable "interrupt_timer" {
  default     = 125
  description = "The time to wait between interrupts or the idle period that must be encountered before an interrupt is sent. To turn off interrupt coalescing, enter 0 (zero) in this field.  Range is 0-65535."
  type        = number
}

variable "interrupts" {
  default     = 8
  description = "The number of interrupt resources to allocate. Typical value is be equal to the number of completion queue resources.  Range is 1-1024."
  type        = number
}

variable "name" {
  default     = "vnic_adapter"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "receive_side_scaling_enable" {
  default     = true
  description = "Receive Side Scaling allows the incoming traffic to be spread across multiple CPU cores."
  type        = bool
}

variable "roce_cos" {
  default     = 6
  description = <<-EOT
  The Class of Service for RoCE on this virtual interface.  Options are:
  * 1
  * 2
  * 4
  * 5
  * 6
  EOT
  type        = number
}

variable "roce_enable" {
  default     = false
  description = "If enabled sets RDMA over Converged Ethernet (RoCE) on this virtual interface."
  type        = bool
}

variable "roce_memory_regions" {
  default     = 0
  description = "The number of memory regions per adapter. Recommended value = integer power of 2.  Range is 0-524288."
  type        = number
}

variable "roce_queue_pairs" {
  default     = 0
  description = "The number of queue pairs per adapter. Recommended value = integer power of 2.  Range is 0-8192."
  type        = number
}

variable "roce_resource_groups" {
  default     = 0
  description = "The number of resource groups per adapter. Recommended value = be an integer power of 2 greater than or equal to the number of CPU cores on the system for optimum performance.  Range is 0-128."
  type        = number
}

variable "roce_version" {
  default     = 1
  description = <<-EOT
  Configure RDMA over Converged Ethernet (RoCE) version on the virtual interface. Only RoCEv1 is supported on Cisco VIC 13xx series adapters and only RoCEv2 is supported on Cisco VIC 14xx series adapters.  Options are:
  * 1
  * 2
  EOT
  type        = number
}

variable "rss_enable_ipv4_hash" {
  default     = true
  description = "When enabled, the IPv4 address is used for traffic distribution."
  type        = bool
}

variable "rss_enable_ipv6_extensions_hash" {
  default     = false
  description = "When enabled, the IPv6 extensions are used for traffic distribution."
  type        = bool
}

variable "rss_enable_ipv6_hash" {
  default     = true
  description = "When enabled, the IPv6 address is used for traffic distribution."
  type        = bool
}

variable "rss_enable_tcp_and_ipv4_hash" {
  default     = true
  description = "When enabled, both the IPv4 address and TCP port number are used for traffic distribution."
  type        = bool
}

variable "rss_enable_tcp_and_ipv6_extensions_hash" {
  default     = false
  description = "When enabled, both the IPv6 extensions and TCP port number are used for traffic distribution."
  type        = bool
}

variable "rss_enable_tcp_and_ipv6_hash" {
  default     = true
  description = "When enabled, both the IPv6 address and TCP port number are used for traffic distribution."
  type        = bool
}

variable "rss_enable_udp_and_ipv4_hash" {
  default     = false
  description = "When enabled, both the IPv4 address and UDP port number are used for traffic distribution."
  type        = bool
}

variable "rss_enable_udp_and_ipv6_hash" {
  default     = false
  description = "When enabled, both the IPv6 address and UDP port number are used for traffic distribution."
  type        = bool
}

variable "receive_queue_count" {
  default     = 4
  description = "The number of queue resources to allocate.  Range is 1-1000."
  type        = number
}

variable "receive_ring_size" {
  default     = 512
  description = "The number of descriptors in each queue.  Range is 64-4096."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "tcp_offload_large_recieve" {
  default     = true
  description = "Enables the reassembly of segmented packets in hardware before sending them to the CPU."
  type        = bool
}

variable "tcp_offload_large_send" {
  default     = true
  description = "Enables the CPU to send large packets to the hardware for segmentation."
  type        = bool
}

variable "tcp_offload_rx_checksum" {
  default     = true
  description = "When enabled, the CPU sends all packet checksums to the hardware for validation."
  type        = bool
}

variable "tcp_offload_tx_checksum" {
  default     = true
  description = "When enabled, the CPU sends all packets to the hardware so that the checksum can be calculated."
  type        = bool
}

variable "transmit_queue_count" {
  default     = 1
  description = "The number of queue resources to allocate.  Range is 1-1000."
  type        = number
}

variable "transmit_ring_size" {
  default     = 256
  description = "The number of descriptors in each queue.  Range is 64-4096."
  type        = number
}

variable "uplink_failback_timeout" {
  default     = 5
  description = "Uplink Failback Timeout in seconds when uplink failover is enabled for a vNIC. After a vNIC has started using its secondary interface, this setting controls how long the primary interface must be available before the system resumes using the primary interface for the vNIC.  Range is 0-600."
  type        = number
}
