#____________________________________________________________
#
# Optional Variables is an experimental attribute.
# Turning on experimental features until this is
# supported by default.
#____________________________________________________________

# terraform {
#   experiments = [module_variable_optional_attrs]
# }

#____________________________________________________________
#
# Fibre-Channel Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = "Assignment order decides the order in which the next identifier is allocated.\r\n * sequential - Identifiers are assigned in a sequential order.\r\n* default - Assignment order is decided by the system."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Fiber-Channel Pool."
  type        = string
}

variable "id_blocks" {
  default     = []
  description = "List of WWxN's Configuration Parameters to Assign to the Fiber-Channel Pool."
  type        = list(map(string))
}

variable "name" {
  default     = "fc_pool"
  description = "Name for the Fiber-Channel Pool."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "pool_purpose" {
  default     = "WWPN"
  description = "What type of Fiber-Channel Pool is this.  Options are {WWNN|WWPN}."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
