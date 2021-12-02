terraform {
  experiments = [module_variable_optional_attrs]
}

#____________________________________________________________
#
# IP Pool Variables Section.
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
  description = "Description for the IP Pool."
  type        = string
}

variable "ipv4_blocks" {
  default     = {}
  description = "List of IPv4 Addresses to Assign to the IP Pool."
  type = map(object(
    {
      from = string
      size = optional(number)
      to   = optional(string)
    }
  ))
}

variable "ipv4_config" {
  default     = {}
  description = <<-EOT
  List of IPv4 Addresses to Assign to the IP Pool.
  * gateway - Gateway of the Subnet
  * netmask - Netmask of the Subnet in X.X.X.X format
  * primary_dns = Primary DNS Server to Assign to the Pool
  * secondary_dns = Secondary DNS Server to Assign to the Pool
  EOT
  type = map(object(
    {
      gateway       = string
      netmask       = string
      primary_dns   = optional(string)
      secondary_dns = optional(string)
    }
  ))
}

variable "ipv6_blocks" {
  default     = {}
  description = <<-EOT
  List of IPv6 Addresses to Assign to the IP Pool.
  * from - Starting IPv6 Address.
  * size - Size of the IPv6 Address Pool
  * to - Ending IPv6 Address.
  EOT
  type = map(object(
    {
      from = string
      size = optional(number)
      to   = optional(string)
    }
  ))
}

variable "ipv6_config" {
  default     = {}
  description = <<-EOT
  List of IPv6 Configuration Parameters to Assign to the IP Pool.
  * gateway - Gateway of the Subnet
  * prefix - Prefix of the Subnet in Integer format
  * primary_dns = Primary DNS Server to Assign to the Pool
  * secondary_dns = Secondary DNS Server to Assign to the Pool
  EOT
  type = map(object(
    {
      gateway       = string
      prefix        = number
      primary_dns   = optional(string)
      secondary_dns = optional(string)
    }
  ))
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
