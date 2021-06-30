#____________________________________________________________
#
# Ethernet (vNIC) Policy Variables Section.
#____________________________________________________________

variable "failover_enabled" {
  default     = false
  description = "Setting this to true esnures that the traffic failsover from one uplink to another auotmatically in case of an uplink failure. It is applicable for Cisco VIC adapters only which are connected to Fabric Interconnect cluster. The uplink if specified determines the primary uplink in case of a failover."
  type        = bool
}

variable "iscsi_ip_v4_address_allocation_type" {
  default     = 0
  description = "Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6."
  type        = number
}

# failover_enabled                    = var.failover
# iscsi_ip_v4_address_allocation_type = var.iscsi_ip_allocation
# iscsi_ipv4_address                  = var.iscsi_ip_address
# mac_address_type                    = var.mac_address_type
# name                                = var.vnic_name
# order                               = var.order
# standby_vif_id                      = var.standby_vif_id
# static_mac_address                  = var.static_mac_address
# vif_id                              = var.vif_id
# cdn {
#   value     = var.cdn_name
#   nr_source = var.cdn_source
# }
# placement {
#   id        = var.placement_slot_id
#   pci_link  = var.placement_pci_link
#   switch_id = var.placement_switch_id
#   uplink    = var.placement_pci_order
# }
# usnic_settings {
#   cos                  = var.usnic_cos
#   nr_count             = var.usnic_count
#   usnic_adapter_policy = var.usnic_adapter_policy_moid
# }
# vmq_settings {
#   enabled             = var.vmq_enabled
#   multi_queue_support = var.vmq_queue
#   num_interrupts      = var.vmq_interrupts
#   num_vmqs            = var.vmq_number_queues
#   num_sub_vnics       = var.vmq_number_sub_vnics
#   vmmq_adapter_policy = var.vmq_adapter_policy_moid
# }
# dynamic "eth_adapter_policy" {
#   for_each = var.vnic_adapter_moid
#   content {
#     moid = eth_adapter_policy.value.moid
#   }
# }
# dynamic "eth_network_policy" {
#   for_each = var.vnic_network_moid
#   content {
#     moid = eth_network_policy.value.moid
#   }
# }
# dynamic "eth_qos_policy" {
#   for_each = var.vnic_qos_moid
#   content {
#     moid = eth_qos_policy.value.moid
#   }
# }
# dynamic "fabric_eth_network_control_policy" {
#   for_each = var.vnic_control_moid
#   content {
#     moid = fabric_eth_network_group_policy.value.moid
#   }
# }
# dynamic "fabric_eth_network_group_policy" {
#   for_each = var.vnic_vlan_group_moid
#   content {
#     moid = fabric_eth_network_group_policy.value.moid
#   }
# }
# dynamic "ip_lease" {
#   for_each = var.ip_lease_moid
#   content {
#     moid = ip_lease.value.moid
#   }
# }
# dynamic "iscsi_boot_policy" {
#   for_each = var.iscsi_boot_policy_moid
#   content {
#     moid = iscsi_boot_policy.value.moid
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
# dynamic "lan_connectivity_policy" {
#   for_each = var.lan_connectivity_moid
#   content {
#     moid        = lan_connectivity_policy.value.moid
#     object_type = "vnic.LanConnectivityPolicy"
#   }
# }
# dynamic "mac_lease" {
#   for_each = var.mac_lease_moid
#   content {
#     moid = mac_lease.value.moid
#   }
# }
# dynamic "mac_pool" {
#   for_each = var.mac_pool_moid
#   content {
#     moid = mac_pool.value.moid
#   }
# }
# dynamic "profiles" {
#   for_each = var.profiles
#   content {
#     moid        = profiles.value["moid"]
#     object_type = "server.Profile"
#   }
# }
# dynamic "sp_nics" {
#   for_each = var.sp_nics_moid
#   content {
#     moid = sp_nics.value.moid
#   }
# }
# dynamic "tags" {
#   for_each = var.tags
#   content {
#     key   = tags.value.key
#     value = tags.value.value
#   }
# }
variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
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

variable "name" {
  default     = "vnic"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
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

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

