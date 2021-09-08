#____________________________________________________________
#
# IMC Access Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_ipv4" {
  default     = true
  description = "Flag to Enable or Disable the IPv4 Address Family for Poliices."
  type        = bool
}

variable "enable_ipv6" {
  default     = false
  description = "Flag to Enable or Disable the IPv6 Address Family for Poliices."
  type        = bool
}

variable "inband_vlan_id" {
  default     = 1
  description = "VLAN ID to Assign as the Inband Management VLAN for IMC Access."
  type        = number
}

variable "inband_ip_pool" {
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

variable "profiles" {
  default     = {}
  description = <<-EOT
  Map of Profiles to Assign to the Policy.
  * moid - Managed Object Identifier for the Managed Resource.
  * object_type - Object Type to Assign in the Profile Configuration.
    - chassis.Profile - For UCS Chassis Profiles.
    - server.Profile - For UCS Server Profiles.
    - server.ProfileTemplate - For UCS Server Profile Templates.
  EOT
  type = map(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
