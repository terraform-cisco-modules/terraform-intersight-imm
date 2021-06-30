#____________________________________________________________
#
# MAC Pool Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = "Assignment order decides the order in which the next identifier is allocated.\r\n * sequential - Identifiers are assigned in a sequential order.\r\n* default - Assignment order is decided by the system."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the MAC Address Pool."
  type        = string
}

variable "mac_blocks" {
  default     = []
  description = "List of MAC Address Configuration Parameters to Assign to the MAC Pool."
  type        = list(map(string))
}

variable "name" {
  default     = "mac_pool"
  description = "Name for the MAC Pool."
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
