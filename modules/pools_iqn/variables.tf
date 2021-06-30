#____________________________________________________________
#
# IQN Pool Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = "Assignment order decides the order in which the next identifier is allocated.\r\n * sequential - Identifiers are assigned in a sequential order.\r\n* default - Assignment order is decided by the system."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the IQN Pool."
  type        = string
}

variable "iqn_prefix" {
  default     = ""
  description = "The prefix for IQN blocks created for this pool."
  type        = string
}

variable "iqn_suffix_blocks" {
  default     = []
  description = "List of IQN Pool Parameters to Assign to the IQN Pool.\r\n * from: Starting IQN Address.\r\n * size: Size of the IQN Pool.\r\n * suffix: Suffix to assign to the IQN Pool."
  type        = list(map(string))
}

variable "name" {
  default     = "ip_pool"
  description = "Name for the IP Pool."
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
