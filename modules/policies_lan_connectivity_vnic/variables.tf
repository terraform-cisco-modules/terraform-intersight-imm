#____________________________________________________________
#
# Ethernet (vNIC) Policy Variables Section.
#____________________________________________________________

variable "cdn_name" {
  default     = ""
  description = "The CDN value entered in case of user defined mode."
  type        = string
}

variable "cdn_source" {
  default     = "vnic"
  description = <<-EOT
  Source of the CDN. It can either be user specified or be the same as the vNIC name.
  * user - Source of the CDN is specified by the user.
  * vnic - Source of the CDN is the same as the vNIC name.
  EOT
  type        = string
}

variable "failover_enabled" {
  default     = false
  description = "Setting this to true ensures that the traffic failover from one uplink to another auotmatically in case of an uplink failure. It is applicable for Cisco VIC adapters only which are connected to Fabric Interconnect cluster. The uplink if specified determines the primary uplink in case of a failover."
  type        = bool
}

variable "ip_lease_moid" {
  default     = []
  description = "A reference to a ippoolIpLease resource."
  type        = set(string)
}

variable "iscsi_boot_policy_moid" {
  default     = []
  description = "A reference to a vnicIscsiBootPolicy resource."
  type        = set(string)
}

variable "lan_connectivity_moid" {
  description = "A reference to a vnicLanConnectivityPolicy resource."
  type        = string
}

variable "mac_address_type" {
  default     = "POOL"
  description = <<-EOT
  Type of allocation selected to assign a MAC address for the vnic.
  * POOL - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface.
  * STATIC - The user assigns a static mac/wwn address for the Virtual Interface.
  EOT
  type        = string
}

variable "mac_lease_moid" {
  default     = []
  description = "A reference to a macpoolLease resource."
  type        = set(string)
}

variable "mac_pool_moid" {
  default     = []
  description = "A reference to a macpoolPool resource."
  type        = set(string)
}

variable "placement_pci_link" {
  default     = 0
  description = "The PCI Link used as transport for the virtual interface. All VIC adapters have a single PCI link except VIC 1385 which has two."
  type        = number
}

variable "placement_slot_id" {
  default     = "MLOM"
  description = "PCIe Slot where the VIC adapter is installed. Supported values are (1-15) and MLOM."
  type        = string
}

variable "placement_switch_id" {
  default     = "None"
  description = <<-EOT
  The fabric port to which the vNICs will be associated.
  * A - Fabric A of the FI cluster.
  * B - Fabric B of the FI cluster.
  * None - Fabric Id is not set to either A or B for the standalone case where the server is not connected to Fabric Interconnects. The value 'None' should be used.
  EOT
  type        = string
}

variable "placement_uplink" {
  default     = 0
  description = "Adapter port on which the virtual interface will be created."
  type        = number
}

variable "sp_nics_moid" {
  default     = []
  description = "An array of relationships to vnicEthIf resources."
  type        = set(string)
}

variable "static_mac_address" {
  default     = ""
  description = "The MAC address must be in hexadecimal format xx:xx:xx:xx:xx:xx.To ensure uniqueness of MACs in the LAN fabric, you are strongly encouraged to use thefollowing MAC prefix 00:25:B5:xx:xx:xx."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "usnic_cos" {
  default     = 5
  description = "Class of Service to be used for traffic on the usNIC.  Valid Range is 0-6."
  type        = number
}

variable "usnic_count" {
  default     = 0
  description = "Number of usNIC interfaces to be created.  Range is 0-255."
  type        = number
}

variable "usnic_adapter_policy_moid" {
  default     = ""
  description = "Ethernet Adapter policy to be associated with the usNICs."
  type        = string
}

variable "vmq_enabled" {
  default     = false
  description = "Enables VMQ feature on the virtual interface."
  type        = bool
}

variable "vmq_multi_queue_support" {
  default     = false
  description = "Enables Virtual Machine Multi-Queue feature on the virtual interface. VMMQ allows configuration of multiple I/O queues for a single VM and thus distributes traffic across multiple CPU cores in a VM."
  type        = bool
}

variable "vmq_interrupts" {
  default     = 16
  description = "The number of interrupt resources to be allocated. Recommended value is the number of CPU threads or logical processors available in the server.  Range is 1-514."
  type        = number
}

variable "vmq_number_queues" {
  default     = 4
  description = "The number of hardware Virtual Machine Queues to be allocated. The number of VMQs per adapter must be one more than the maximum number of VM NICs.  Range is 1-128."
  type        = number
}

variable "vmq_number_sub_vnics" {
  default     = 64
  description = "The number of sub vNICs to be created.  Range is 0-64."
  type        = number
}

variable "vmq_adapter_policy_moid" {
  default     = ""
  description = "Ethernet Adapter policy to be associated with the Sub vNICs. The Transmit Queue and Receive Queue resource value of VMMQ adapter policy should be greater than or equal to the configured number of sub vNICs."
  type        = string
}

variable "vnic_adapter_moid" {
  description = "A reference to a vnicEthAdapterPolicy resource."
  type        = string
}

variable "vnic_control_moid" {
  description = "A reference to a fabricEthNetworkControlPolicy resource."
  type        = string
}

variable "vnic_name" {
  default     = "vnic"
  description = "Name of the virtual ethernet interface."
  type        = string
}

variable "vnic_network_moid" {
  default     = []
  description = "A reference to a vnicEthNetworkPolicy resource."
  type        = set(string)
}

variable "vnic_network_group_moid" {
  description = "An array of relationships to fabricEthNetworkGroupPolicy resources."
  type        = string
}

variable "vnic_order" {
  default     = 0
  description = "The order in which the virtual interface is brought up. The order assigned to an interface should be unique for all the Ethernet and Fibre-Channel interfaces on each PCI link on a VIC adapter. The maximum value of PCI order is limited by the number of virtual interfaces (Ethernet and Fibre-Channel) on each PCI link on a VIC adapter. All VIC adapters have a single PCI link except VIC 1385 which has two."
  type        = number
}

variable "vnic_qos_moid" {
  description = "A reference to a vnicEthQosPolicy resource."
  type        = string
}
