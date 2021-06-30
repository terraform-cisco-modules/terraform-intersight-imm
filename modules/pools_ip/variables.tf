#____________________________________________________________
#
# IP Pool Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = "Assignment order decides the order in which the next identifier is allocated.\r\n * sequential - Identifiers are assigned in a sequential order.\r\n* default - Assignment order is decided by the system."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the IP Pool."
  type        = string
}

variable "dns_servers_v4" {
  default     = []
  description = "List of IPv4 DNS Servers for this Pool."
  type        = list(string)
}

variable "dns_servers_v6" {
  default     = []
  description = "List of IPv6 DNS Servers for this Pool."
  type        = list(string)
}

variable "ipv4_block" {
  default     = []
  description = "List of IPv4 Addresses to Assign to the IP Pool."
  type        = list(map(string))
}

variable "ipv4_config" {
  default     = []
  description = "List of IPv4 Configuration Parameters to Assign to the IP Pool."
  type        = list(map(string))
}

variable "ipv6_block" {
  default     = []
  description = "List of IPv6 Addresses to Assign to the IP Pool."
  type        = list(map(string))
}

variable "ipv6_config" {
  default     = []
  description = "List of IPv6 Configuration Parameters to Assign to the IP Pool."
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
