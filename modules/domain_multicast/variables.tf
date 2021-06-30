#____________________________________________________________
#
# Multicast Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "multicast"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "querier_ip" {
  default     = ""
  description = "IP Address of the IGMP Querier to Assign to the VLAN through this Policy."
  type        = string
}

variable "querier_state" {
  default     = "Disabled"
  description = "dministrative state of the IGMP Querier for the VLANs Assigned to this Policy."
  type        = string
}

variable "snooping_state" {
  default     = "Enabled"
  description = "Administrative State for Snoooping for the VLANs Assigned to this Policy."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
