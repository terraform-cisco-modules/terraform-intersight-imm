#____________________________________________________________
#
# UCS Domain VLANs Variables Section.
#____________________________________________________________

variable "auto_allow_on_uplinks" {
  default     = false
  description = "Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI."
  type        = bool
}

variable "name" {
  default     = "vlan-{vlan_id}"
  description = "The 'name' used to identify this VLAN."
  type        = string
}

variable "native_vlan" {
  default     = false
  description = "Used to define whether this VLAN is to be classified as 'native' for traffic in this FI."
  type        = bool
}

variable "multicast_policy_moid" {
  description = "Multicast Policy moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vlan_id" {
  description = "The identifier for this Virtual LAN."
  type        = number
}

variable "vlan_policy_moid" {
  description = "VLAN Policy (Ethernet Network Policy) moid."
  type        = string
}
