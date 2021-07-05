#____________________________________________________________
#
# Fibre Channel (vHBA) Policy Variables Section.
#____________________________________________________________

variable "persistent_lun_bindings" {
  default     = false
  description = "Enables retention of LUN ID associations in memory until they are manually cleared."
  type        = bool
}

variable "fabric_vhba" {
  description = "List of Attributes Unique to each vNIC."
  type = map(object({
    network    = string
    switch_id  = string
    vhba_name  = string
    vhba_order = number
    wwpn_pool  = string
  }))
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
  description = "The fabric port to which the vHBAs will be associated.\r\n * A - Fabric A of the FI cluster.\r\n * B - Fabric B of the FI cluster.\r\n * None - Fabric Id is not set to either A or B for the standalone case where the server is not connected to Fabric Interconnects. The value 'None' should be used."
  type        = string
}

variable "placement_uplink" {
  default     = 0
  description = "Adapter port on which the virtual interface will be created."
  type        = number
}

variable "san_connectivity_moid" {
  description = "A reference to a vnicSanConnectivityPolicy resource."
  type        = string
}

variable "static_wwpn_address" {
  default     = ""
  description = "The WWPN address must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx.Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF.To ensure uniqueness of WWN's in the SAN fabric, you are strongly encouraged to use the WWN prefix - 20:00:00:25:B5:xx:xx:xx."
  type        = string
}

variable "vhba_adapter_moid" {
  description = "A reference to a vnicFcAdapterPolicy resource."
  type        = string
}

variable "vhba_qos_moid" {
  description = "A reference to a vnicFcQosPolicy resource."
  type        = string
}

variable "vhba_type" {
  default     = "fc-initiator"
  description = "VHBA Type configuration for SAN Connectivity Policy. This configuration is supported only on Cisco VIC 14XX series and higher series of adapters.\r\n * fc-initiator - The default value set for vHBA Type Configuration. Fc-initiator specifies vHBA as a consumer of storage. Enables SCSI commands to transfer data and status information between host and target storage systems.\r\n * fc-nvme-initiator - Fc-nvme-initiator specifies vHBA as a consumer of storage. Enables NVMe-based message commands to transfer data and status information between host and target storage systems.\r\n * fc-nvme-target - Fc-nvme-target specifies vHBA as a provider of storage volumes to initiators. Enables NVMe-based message commands to transfer data and status information between host and target storage systems. Currently tech-preview, only enabled with an asynchronous driver.\r\n * fc-target - Fc-target specifies vHBA as a provider of storage volumes to initiators. Enables SCSI commands to transfer data and status information between host and target storage systems. fc-target is enabled only with an asynchronous driver."
  type        = string
}

variable "wwpn_address_type" {
  default     = "POOL"
  description = "Type of allocation selected to assign a WWPN address to the vhba.\r\n * POOL - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface.\r\n * STATIC - The user assigns a static mac/wwn address for the Virtual Interface."
  type        = string
}

variable "wwpn_lease_moid" {
  default     = []
  description = "A reference to a fcpoolLease resource."
  type        = set(string)
}
