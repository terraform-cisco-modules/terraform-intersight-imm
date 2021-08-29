#____________________________________________________________
#
# Certificate Management Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "inband_mgmt_vlan" {
  default     = 1
  description = "VLAN ID to Assign as the Inband Management VLAN for Certificate Management"
  type        = number
}

variable "ipv4_enable" {
  default     = true
  description = "Flag to Enable or Disable the IPv4 Address Family for Poliices."
  type        = bool
}

variable "ipv6_enable" {
  default     = false
  description = "Flag to Enable or Disable the IPv6 Address Family for Poliices."
  type        = bool
}

variable "imc_ip_pool" {
  default     = ""
  description = "moid of an IP Pool to Assign to the Certificate Management Policy."
}

variable "name" {
  default     = "imc_access"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
