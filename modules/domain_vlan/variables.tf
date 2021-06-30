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
  default     = []
  description = "Multicast Policy moid map."
  type        = list(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vlan_list_type" {
  default     = "list"
  description = "Options are {list|range}.  You can add VLANs as a list [1, 2, 3] or as a 1-100.  This will tell the script which type you are using."
  type        = string
}

variable "vlan_list" {
  default = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  type    = set(string)
}

variable "vlan_prefix" {
  default     = "VLAN"
  description = "Prefix Name for VLANs."
  type        = string
}

variable "vlan_range_start" {
  default     = 1
  description = "When vlan_list_type is set to range, this is the starting vlan id."
  type        = number
}

variable "vlan_range_stop" {
  default     = 2
  description = "When vlan_list_type is set to range, this is the ending vlan id."
  type        = number
}

variable "vlan_policy_moid" {
  description = "VLAN Policy (Ethernet Network Policy) moid."
  type        = string
}
