#____________________________________________________________
#
# Storage Disk Group Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "hot_spares" {
  default     = []
  description = "Range of Disks to Add as Hot Spares.  Note in this example this would add 3 and 4.  Always Add one above your value."
  type        = list(number)
}

variable "name" {
  default     = "diskgroup_policy"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "raid_level" {
  default     = "Raid1"
  description = "The supported RAID level for the disk group.  Options are {Raid{0|1|5|6|10|50|60}}"
  type        = string
}

variable "span_groups" {
  default = {
    span_0 = [
      {
        disk = 1
      },
      {
        disk = 2
      }
    ]
  }
  description = "Using the Default Range would add disks 1 and 2 to a span_group."
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "use_jbods" {
  default     = true
  description = "Selected disks in the disk group in JBOD state will be set to Unconfigured Good state before they are used in virtual drive creation."
  type        = bool
}
