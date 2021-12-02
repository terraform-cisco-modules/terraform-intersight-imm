terraform {
  experiments = [module_variable_optional_attrs]
}

#____________________________________________________________
#
# MAC Pool Variables Section.
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
  description = "Description for the MAC Address Pool."
  type        = string
}

variable "mac_blocks" {
  default     = {}
  description = <<-EOT
  List of MAC Address Configuration Parameters to Assign to the MAC Pool.
  * from - Staring MAC Address.  An Example is "00:25:B5:0A:00:00".
  * size - Size of MAC Address Pool.  An Example is 1000.
  * to - Ending MAC Address.  An Example is "00:25:B5:0A:03:E7".
  EOT
  type = map(object(
    {
      from = string
      size = optional(number)
      to   = optional(string)
    }
  ))
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
