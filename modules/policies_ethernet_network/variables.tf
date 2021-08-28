#____________________________________________________________
#
# Ethernet Network Policy Variables Section.
#____________________________________________________________

variable "allowed_vlans" {
  default     = ""
  description = "Allowed VLAN IDs of the virtual interface."
  type        = string
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

variable "default_vlan" {
  default     = 1
  description = "VLAN to Assign as the Default VLAN."
  type        = number
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "mode" {
  default     = "TRUNK"
  description = <<-EOT
  Option to determine if the port can carry single VLAN (Access) or multiple VLANs (Trunk) traffic.
  * ACCESS - An access port carries traffic only for a single VLAN on the interface.
  * TRUNK - A trunk port can have two or more VLANs configured on the interface. It can carry traffic for several VLANs simultaneously.
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
