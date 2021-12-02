terraform {
  experiments = [module_variable_optional_attrs]
}

#____________________________________________________________
#
# UUID Pool Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = <<-EOT
  Assignment order decides the order in which the next identifier is allocated.
  * sequential - Identifiers are assigned in a sequential order.
  * default - Assignment order is decided by the system.
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the UUID Pool."
  type        = string
}

variable "uuid_blocks" {
  default     = {}
  description = "List of UUID's Suffix Parameters to Assign to the UUID Pool."
  type = map(object(
    {
      from = string
      size = optional(number)
      to   = optional(string)
    }
  ))
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
