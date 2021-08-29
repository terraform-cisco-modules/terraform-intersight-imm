#____________________________________________________________
#
# UCS Domain Port Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "device_model" {
  default     = "UCS-FI-6454"
  description = <<-EOT
  This field specifies the device model that this Port Policy is being configured for.
  * UCS-FI-6454 - The standard 4th generation UCS Fabric Interconnect with 54 ports.
  * UCS-FI-64108 - The expanded 4th generation UCS Fabric Interconnect with 108 ports.
  * unknown - Unknown device type, usage is TBD.
  EOT
  type        = string
}

variable "name" {
  default     = "port_policy"
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