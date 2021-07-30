#____________________________________________________________
#
# UUID Pool Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = "Assignment order decides the order in which the next identifier is allocated.\r\n * sequential - Identifiers are assigned in a sequential order.\r\n* default - Assignment order is decided by the system."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the UUID Pool."
  type        = string
}

variable "uuid_suffix_blocks" {
  default     = []
  description = "List of UUID's Suffix Parameters to Assign to the UUID Pool."
  type        = list(map(any))
}

variable "name" {
  default     = "uuid_pool"
  description = "Name for the UUID Pool."
  type        = string
}

variable "prefix" {
  default     = "000025B5-0000-0000"
  description = "Prefix to assign to the UUID Pool."
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
