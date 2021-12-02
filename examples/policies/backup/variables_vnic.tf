#____________________________________________________________
#
# Ethernet Adapter Policy Variables Section.
#____________________________________________________________

variable "advanced_filter" {
  default     = false
  description = "Enables advanced filtering on the interface."
  type        = bool
}

variable "arfs_enable" {
  default     = false
  description = "Status of Accelerated Receive Flow Steering on the virtual ethernet interface."
  type        = bool
}

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

variable "interrupt_coalescing_type" {
  default     = "MIN"
  description = "Interrupt Coalescing Type. This can be one of the following:- MIN - The system waits for the time specified in the Coalescing Time field before sending another interrupt event IDLE - The system does not send an interrupt until there is a period of no activity lasting as least as long as the time specified in the Coalescing Time field.  Options are {IDLE|MIN}."
  type        = string
}

variable "interrupt_interrupts" {
  default     = 8
  description = "The number of interrupt resources to allocate. Typical value is be equal to the number of completion queue resources.  Range is 1-1024."
  type        = number
}

variable "interrupt_mode" {
  default     = "MSIx"
  description = "Preferred driver interrupt mode. This can be one of the following:- MSIx - Message Signaled Interrupts (MSI) with the optional extension. MSI - MSI only. INTx - PCI INTx interrupts. MSIx is the recommended option.  Options are {MSI|MSIx|INTx}."
  type        = string
}

variable "interrupt_scaling" {
  default     = false
  description = "Enables Interrupt Scaling on the interface."
  type        = bool
}

variable "interrupt_timer" {
  default     = 125
  description = "The time to wait between interrupts or the idle period that must be encountered before an interrupt is sent. To turn off interrupt coalescing, enter 0 (zero) in this field.  Range is 0-65535."
  type        = number
}

variable "nvgre_enable" {
  default     = false
  description = "Status of the Network Virtualization using Generic Routing Encapsulation on the virtual ethernet interface."
  type        = bool
}

variable "receive_side_scaling" {
  default     = false
  description = "Receive Side Scaling allows the incoming traffic to be spread across multiple CPU cores."
  type        = bool
}

variable "roce_cos" {
  default     = 5
  description = "The Class of Service for RoCE on this virtual interface.  Options are {1|2|4|5|6}."
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
  default     = 2
  description = "Configure RDMA over Converged Ethernet (RoCE) version on the virtual interface. Only RoCEv1 is supported on Cisco VIC 13xx series adapters and only RoCEv2 is supported on Cisco VIC 14xx series adapters.  Options are 1 or 2."
  type        = number
}

variable "rss_hash_ipv4_hash" {
  default     = true
  description = "When enabled, the IPv4 address is used for traffic distribution."
  type        = bool
}

variable "rss_hash_ipv6_ext_hash" {
  default     = false
  description = "When enabled, the IPv6 extensions are used for traffic distribution."
  type        = bool
}

variable "rss_hash_ipv6_hash" {
  default     = true
  description = "When enabled, the IPv6 address is used for traffic distribution."
  type        = bool
}

variable "rss_hash_tcp_ipv4_hash" {
  default     = true
  description = "When enabled, both the IPv4 address and TCP port number are used for traffic distribution."
  type        = bool
}

variable "rss_hash_tcp_ipv6_ext_hash" {
  default     = false
  description = "When enabled, both the IPv6 extensions and TCP port number are used for traffic distribution."
  type        = bool
}

variable "rss_hash_tcp_ipv6_hash" {
  default     = true
  description = "When enabled, both the IPv6 address and TCP port number are used for traffic distribution."
  type        = bool
}

variable "rss_hash_udp_ipv4_hash" {
  default     = false
  description = "When enabled, both the IPv4 address and UDP port number are used for traffic distribution."
  type        = bool
}

variable "rss_hash_udp_ipv6_hash" {
  default     = false
  description = "When enabled, both the IPv6 address and UDP port number are used for traffic distribution."
  type        = bool
}

variable "rx_queue_count" {
  default     = 4
  description = "The number of queue resources to allocate.  Range is 1-1000."
  type        = number
}

variable "rx_ring_size" {
  default     = 512
  description = "The number of descriptors in each queue.  Range is 64-4096."
  type        = number
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

variable "tx_queue_count" {
  default     = 1
  description = "The number of queue resources to allocate.  Range is 1-1000."
  type        = number
}

variable "tx_ring_size" {
  default     = 256
  description = "The number of descriptors in each queue.  Range is 64-4096."
  type        = number
}

variable "vxlan_enable" {
  default     = false
  description = "Status of the Virtual Extensible LAN Protocol on the virtual ethernet interface."
  type        = bool
}

variable "uplink_failback_timeout" {
  default     = 5
  description = "Uplink Failback Timeout in seconds when uplink failover is enabled for a vNIC. After a vNIC has started using its secondary interface, this setting controls how long the primary interface must be available before the system resumes using the primary interface for the vNIC.  Range is 0-600."
  type        = number
}


#____________________________________________________________
#
# Ethernet Network Control Policy Variables Section.
#____________________________________________________________

variable "cdp_enabled" {
  default     = false
  description = "Flag to Enable or Disable CDP on an interface."
  type        = bool
}

variable "forge_mac" {
  default     = "allow"
  description = "Determines if the MAC forging is allowed or denied on an interface.  Options are {allow|deny}."
  type        = string
}

variable "lldp_receive" {
  default     = false
  description = "Determines if the LLDP frames can be received by an interface on the switch."
  type        = bool
}

variable "lldp_transmit" {
  default     = false
  description = "Determines if the LLDP frames can be transmitted by an interface on the switch."
  type        = bool
}

variable "mac_registration_mode" {
  default     = "nativeVlanOnly"
  description = "Determines the MAC addresses that have to be registered with the switch.  Options are {allVlans|nativeVlanOnly}."
  type        = string
}

variable "uplink_fail_action" {
  default     = "linkDown"
  description = "Determines the state of the virtual interface (vethernet / vfc) on the switch when a suitable uplink is not pinned.  Options are {linkDown|warning}.  Important! If the Action on Uplink is set to Warning, the switch will not fail over if uplink connectivity is lost."
  type        = string
}


#______________________________________________________________
#
# Ethernet Network Group (VLAN Group) Policy Variables.
#______________________________________________________________

variable "native_vlan" {
  default     = null
  description = "VLAN to Assign as the Native VLAN."
  type        = number
}

variable "list_type" {
  default     = "list"
  description = "Variable to Specify if the desire is for a range or list of vlans.  Options are {list|range}"
  type        = string
}

variable "vlan_list" {
  default     = [1, 2, 3, 4, 5]
  description = "List of VLAN's to Add to the VLAN Group Policy.  Use this if list_type is set to \"list\"."
  type        = list(string)
}

variable "vlan_start" {
  default     = 1
  description = "Staring VLAN ID if list_type is set to \"range\"."
  type        = number
}

variable "vlan_stop" {
  default     = 10
  description = "Staring VLAN ID if list_type is set to \"range\"."
  type        = number
}

#____________________________________________________________
#
# Ethernet Qos Policy Variables Section.
#____________________________________________________________

variable "burst" {
  default     = 1024
  description = "The burst traffic, in bytes, allowed on the vNIC.  Value can be between 1024-1000000."
  type        = number
}

variable "cos" {
  default     = 0
  description = "Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6."
  type        = number
}

variable "mtu" {
  default     = 1500
  description = "The Maximum Transmission Unit (MTU) or packet size that the virtual interface accepts.  Value can be between 1500-9000."
  type        = number
}

variable "priority" {
  default     = "Best Effort"
  description = "The priortity matching the System QoS specified in the fabric profile.  Options are {Platinum|Gold|Silver|Bronze|Best Effort|FC}."
  type        = string
}

variable "rate_limit" {
  default     = 0
  description = "The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.  Range is between 0-100000."
  type        = number
}

variable "trust_host_cos" {
  default     = false
  description = "Enables usage of the Class of Service provided by the operating system."
  type        = bool
}


#____________________________________________________________
#
# iSCSI Adapter Policy Variables Section.
#____________________________________________________________

variable "connection_time_out" {
  default     = 15
  description = "The number of seconds to wait until Cisco UCS assumes that the initial login has failed and the iSCSI adapter is unavailable.  Range is 0-255."
  type        = number
}

variable "dhcp_timeout" {
  default     = 60
  description = "The number of seconds to wait before the initiator assumes that the DHCP server is unavailable.  Range is 60-300."
  type        = number
}

variable "lun_busy_retry_count" {
  default     = 15
  description = "The number of times to retry the connection in case of a failure during iSCSI LUN discovery.  Range is 0-60."
  type        = number
}


#____________________________________________________________
#
# iSCSI Target Policy Variables Section.
#____________________________________________________________

variable "ip_address" {
  default     = ""
  description = "The IPv4 address assigned to the iSCSI target."
  type        = string
}

variable "lun" {
  default     = []
  description = "The LUN parameters associated with an iSCSI target. This complex property has following sub-properties:\r\n * bootable: Specifies LUN is bootable. true or false.\r\n * lun_id: The Identifier of the LUN."
  type        = list(map(string))
}

variable "port" {
  default     = 0
  description = "The port associated with the iSCSI target."
  type        = number
}

variable "target_name" {
  default     = ""
  description = "Qualified Name (IQN) or Extended Unique Identifier (EUI) name of the iSCSI target."
  type        = string
}


#____________________________________________________________
#
# LAN Connectivity Policy Variables Section.
#____________________________________________________________

variable "iqn_allocation_type" {
  default     = "None"
  description = "Allocation Type of iSCSI Qualified Name.  Options are {None|Pool|Static}."
  type        = string
}

variable "iqn_pool" {
  default     = []
  description = "IQN Pool to Assign to the Policy."
  type        = set(string)
}

variable "iqn_static_name" {
  default     = ""
  description = "User provided static iSCSI Qualified Name (IQN) for use as initiator identifiers by iSCSI vNICs."
  type        = string
}

variable "placement_mode" {
  default     = "custom"
  description = "The mode used for placement of vNICs on network adapters. It can either be auto or custom."
  type        = string
}

variable "target_platform" {
  default     = "FIAttached"
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in 'Standalone' mode or which is attached to a Fabric Interconnect 'FIAttached' managed by Intersight."
  type        = string
}
