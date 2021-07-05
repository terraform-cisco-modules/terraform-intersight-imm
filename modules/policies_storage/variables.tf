#____________________________________________________________
#
# Storage Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

# variable "disk_group_policies" {
#   default     = []
#   description = "List of Disk Groups to Assign to the Policy."
#   type        = set(string)
# }

variable "name" {
  default     = "storage"
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

variable "retain_policy" {
  default     = true
  description = "Retains the virtual drives defined in policy if they exist already. If this flag is false, the existing virtual drives are removed and created again based on virtual drives in the policy."
  type        = bool
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "unused_disks" {
  default     = "UnconfiguredGood"
  description = "Unused Disks State is used to specify the state, unconfigured good or jbod, in which the disks that are not used in this policy should be moved.\r\n * Jbod - JBOD state where the disks start showing up to host os.\r\n * UnconfiguredGood - Unconfigured good state -ready to be added in a RAID group."
  type        = string
}

variable "virtual_drives" {
  default     = []
  description = "List of Properties to Assign to the Policy."
  type        = list(map(string))
}

