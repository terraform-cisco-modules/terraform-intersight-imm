#____________________________________________________________
#
# vMedia Policy Variables Section.
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

variable "enable_low_power_usb" {
  default     = false
  description = "If enabled, the virtual drives appear on the boot selection menu after mapping the image and rebooting the host."
  type        = bool
}

variable "enable_virtual_media_encryption" {
  default     = false
  description = "If enabled, allows encryption of all Virtual Media communications."
  type        = bool
}

variable "name" {
  default     = "vmedia"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "mappings" {
  default     = []
  description = "List of Properties to Assign to the Policy."
  type        = list(map(string))
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
