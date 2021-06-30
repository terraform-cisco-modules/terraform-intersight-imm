#______________________________________________________________
#
# Ethernet (vNIC) Network Group (VLAN Group) Policy Variables.
#______________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "network_group"
  description = "Name for the Policy."
  type        = string
}

variable "native_vlan" {
  default     = null
  description = "VLAN to Assign as the Native VLAN."
  type        = number
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "list_type" {
  default     = "list"
  description = "Variable to Specify if the desire is for a range or list of vlans.  Options are {list|range}"
  type        = string
}

variable "vlan_list" {
  default     = [1, 2, 3, 4, 5]
  description = "List of VLAN's to Add to the VLAN Group Policy.  Use this if list_type is set to \"list\"."
  type        = list(string)
}

variable "vlan_start" {
  default     = 1
  description = "Staring VLAN ID if list_type is set to \"range\"."
  type        = number
}

variable "vlan_stop" {
  default     = 10
  description = "Staring VLAN ID if list_type is set to \"range\"."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
