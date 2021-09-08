#____________________________________________________________
#
# Boot Order Policy Variables Section.
#____________________________________________________________

variable "boot_mode" {
  default     = "Uefi"
  description = "Boot Mode, optiona are {Legacy|Uefi}."
  type        = string
}

variable "boot_secure" {
  default     = false
  description = "Flag to Enforce Uefi Secure Boot Mode.  If Boot mode is legacy this should always be false."
  type        = bool
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "boot"
  description = "Name for the Policy."
  type        = string
}

variable "boot_devices" {
  default     = []
  description = "List of Boot Devices to Assign to the Boot Policy."
  type        = list(map(any))
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
  type        = map(object(
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
