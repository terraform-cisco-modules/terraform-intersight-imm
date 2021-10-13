#____________________________________________________________
#
# Ethernet Network Policy Variables Section.
#____________________________________________________________

variable "default_vlan" {
  default     = 0
  description = "Native VLAN ID of the virtual interface or the corresponding vethernet on the peer Fabric Interconnect to which the virtual interface is connected. Setting the ID to 0 will not associate any native VLAN to the traffic on the virtual interface."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "vnic_network"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vlan_mode" {
  default     = "ACCESS"
  description = <<-EOT
  Option to determine if the port can carry single VLAN (Access) or multiple VLANs (Trunk) traffic.
  * ACCESS - An access port carries traffic only for a single VLAN on the interface.
  * TRUNK - A trunk port can have two or more VLANs configured on the interface. It can carry traffic for several VLANs simultaneously.
  EOT
  type        = string
}
