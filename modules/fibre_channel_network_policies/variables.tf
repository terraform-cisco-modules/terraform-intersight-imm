#____________________________________________________________
#
# Fibre Channel Network Policy Variables Section.
#____________________________________________________________

variable "default_vlan_id" {
  default     = 0
  description = "Only required for Standalone Servers.  Default VLAN of the virtual interface in Standalone Rack server. Setting the value to 0 is equivalent to None and will not associate any Default VLAN to the traffic on the virtual interface (0-4094)."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "vhba_policy"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "vsan_id" {
  description = "VSAN ID of the virtual interface in FI attached server (1-4094)."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
