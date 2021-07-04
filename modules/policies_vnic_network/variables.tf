#____________________________________________________________
#
# Ethernet Network Policy Variables Section.
#____________________________________________________________

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
  default     = "Access"
  description = "Option to determine if the port can carry single VLAN (Access) or multiple VLANs (Trunk) traffic."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
