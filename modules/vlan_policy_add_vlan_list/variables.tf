#____________________________________________________________
#
# UCS Domain VLANs Variables Section.
#____________________________________________________________

variable "auto_allow_on_uplinks" {
  default     = false
  description = "Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI."
  type        = bool
}

variable "multicast_policy_moid" {
  description = "Multicast Policy moid map."
  type        = string
}

variable "name" {
  default     = "VLAN"
  description = "Prefix Name for VLANs."
  type        = string
}

variable "native_vlan" {
  default     = false
  description = "Used to determine if this VLAN should be untagged on the interfaces."
  type        = bool
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vlan_list" {
  description = "List of VLAN ID's to add to a VLAN Policy.  This string can contain ranges and comma seperated values.  Like \"2-10,21-30\""
  type        = string
}

variable "vlan_policy_moid" {
  description = "VLAN Policy (Ethernet Network Policy) moid."
  type        = string
}
