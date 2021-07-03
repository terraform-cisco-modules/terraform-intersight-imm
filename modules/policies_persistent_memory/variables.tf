#____________________________________________________________
#
# SSH Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "goals_memory_percentage" {
  default     = 0
  description = "Volatile memory percentage.  Range is 0-100."
  type        = number
}

variable "goals_persistent_memory_type" {
  default     = "app-direct"
  description = "Type of the Persistent Memory configuration where the Persistent Memory Modules are combined in an interleaved set or not.\r\n * app-direct - The App Direct interleaved Persistent Memory type.\r\n * app-direct-non-interleaved - The App Direct non-interleaved Persistent Memory type."
  type        = string
}

variable "management_mode" {
  default     = "configured-from-intersight"
  description = "Management Mode of the policy. This can be either Configured from Intersight or Configured from Operating System.\r\n* configured-from-intersight - The Persistent Memory Modules are configured from Intersight thorugh Persistent Memory policy.\r\n * configured-from-operating-system - The Persistent Memory Modules are configured from operating system thorugh OS tools."
  type        = string
}

variable "logical_name_spaces" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = list(map(string))
}

variable "name" {
  default     = "persistent_memory"
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
  type        = list(map(string))
}

variable "retain_name_spaces" {
  default     = true
  description = "Persistent Memory Namespaces to be retained or not."
  type        = bool
}

variable "secure_passphrase" {
  default     = ""
  description = "Secure passphrase to be applied on the Persistent Memory Modules on the server. The allowed characters are a-z, A to Z, 0-9, and special characters =, \u0021, &, #, $, %, +, ^, @, _, *, -."
  sensitive   = true
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
