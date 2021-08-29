#____________________________________________________________
#
# IMC Access Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "inband_vlan" {
  default     = 1
  description = "VLAN ID to Assign as the Inband Management VLAN for IMC Access."
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
  description = "moid of an IP Pool to Assign to the IMC Access Policy."
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

variable "profile_type" {
  default     = "server"
  description = <<-EOT
  Value to Identify the Type of Profile being applied to the policy.  Options are:
  * chassis
  * domain
  * server
  EOT
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
