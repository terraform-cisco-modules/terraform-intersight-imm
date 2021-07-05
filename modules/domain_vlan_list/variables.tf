#____________________________________________________________
#
# UCS Domain VLANs Variables Section.
#____________________________________________________________

variable "auto_allow_on_uplinks" {
  default     = true
  description = "Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI."
  type        = bool
}

variable "is_native" {
  default     = false
  description = "Used to determine if this VLAN should be untagged on the interfaces."
  type        = bool
}

variable "multicast_moid" {
  description = "Multicast Policy moid map."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vlan_list" {
  default = "2-10,21-30"
  type    = string
}

variable "vlan_prefix" {
  default     = "VLAN"
  description = "Prefix Name for VLANs."
  type        = string
}

variable "vlan_policy_moid" {
  description = "VLAN Policy (Ethernet Network Policy) moid."
  type        = string
}