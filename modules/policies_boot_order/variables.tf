#____________________________________________________________
#
# Boot Policy Variables Section.
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
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = list(map(string))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
