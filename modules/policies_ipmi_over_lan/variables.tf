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

variable "is_encryption_key_set" {
  default     = false
  description = "Indicates whether the value of the 'encryptionKey' property has been set."
  type        = bool
}

variable "privilege" {
  default     = "admin"
  description = "The highest privilege level that can be assigned to an IPMI session on a server.\r\n* admin - Privilege to perform all actions available through IPMI.\r\n* user - Privilege to perform some functions through IPMI but restriction on performing administrative tasks.\r\n* read-only - Privilege to view information throught IPMI but restriction on making any changes."
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
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
