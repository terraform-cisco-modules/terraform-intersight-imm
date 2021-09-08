#____________________________________________________________
#
# IPMI over LAN Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enabled" {
  default     = true
  description = "Flag to Enable or Disable the Policy."
  type        = bool
}

variable "encryption_key" {
  default     = ""
  description = "The encryption key to use for IPMI communication. It should have an even number of hexadecimal characters and not exceed 40 characters."
  sensitive   = true
  type        = string
}

variable "privilege" {
  default     = "admin"
  description = <<-EOT
  The highest privilege level that can be assigned to an IPMI session on a server.
  * admin - Privilege to perform all actions available through IPMI.
  * user - Privilege to perform some functions through IPMI but restriction on performing administrative tasks.
  * read-only - Privilege to view information throught IPMI but restriction on making any changes.
  EOT
  type        = string
}

variable "name" {
  default     = "ipmi"
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
