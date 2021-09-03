#____________________________________________________________
#
# Storage Policy Variables Section.
#____________________________________________________________

variable "automatic_drive_group" {
  default     = []
  description = <<-EOT
  This drive group is created using automatic drive selection.  This complex property has following sub-properties:
  * drive_type:(string) Type of drive that should be used for this RAID group.
    - Any - Any type of drive can be used for virtual drive creation.
    - HDD - Hard disk drives should be used for virtual drive creation.
    - SSD - Solid state drives should be used for virtual drive creation.
  * drives_per_span:(int) Number of drives within this span group. The minimum number of disks needed in a span group varies based on RAID level. RAID0 requires at least one disk. RAID1 and RAID10 requires at least 2 and in multiples of . RAID5 and RAID50 require at least 3 disks in a span group. RAID6 and RAID60 require atleast 4 disks in a span.
  * minimum_drive_size:(int) Minimum size of the drive to be used for creating this RAID group.
  * num_dedicated_hot_spares:(string) Number of dedicated hot spare disks for this RAID group. Allowed value is a comma or hyphen separated number range.
  * number_of_spans:(int) Number of span groups to be created for this RAID group. Non-nested RAID levels have a single span.
  * use_remaining_drives:(bool) This flag enables the drive group to use all the remaining drives on the server.
  EOT
  type        = list(map(string))
}

variable "manual_drive_group" {
  default     = []
  description = <<-EOT
  This drive group is created by specifying the drive slots to be used. This complex property has following sub-properties:
  * dedicated_hot_spares:(string) A collection of drives to be used as hot spares for this Drive Group.
  * slots:(string) Collection of local disks that are part of this span group. Allowed value is a comma or hyphen separated number range. The minimum number of disks needed in a span group varies based on RAID level.
    - RAID0 requires at least one disk,
    - RAID1 and RAID10 requires at least 2 and in multiples of 2,
    - RAID5 RAID50 RAID6 and RAID60 require at least 3 disks in a span group.
  EOT
  type        = list(map(string))
}

variable "name" {
  default     = "disk_group"
  description = "Name for the Policy."
  type        = string
}

variable "raid_level" {
  default     = "Raid1"
  description = <<-EOT
  The supported RAID level for the disk group.
  * Raid0 - RAID 0 Stripe Raid Level.
  * Raid1 - RAID 1 Mirror Raid Level.
  * Raid5 - RAID 5 Mirror Raid Level.
  * Raid6 - RAID 6 Mirror Raid Level.
  * Raid10 - RAID 10 Mirror Raid Level.
  * Raid50 - RAID 50 Mirror Raid Level.
  * Raid60 - RAID 60 Mirror Raid Level.
  EOT
  type        = string
}

variable "storage_moid" {
  description = "Storage Policy moid."
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

variable "virtual_drives" {
  default     = []
  description = <<-EOT
  This complex property has following sub-properties:
  * boot_drive:(bool) This flag enables this virtual drive to be used as a boot drive.
  * expand_to_available:(bool) This flag enables the virtual drive to use all the space available in the disk group. When this flag is enabled, the size property is ignored.
  * name:(string) The name of the virtual drive. The name can be between 1 and 15 alphanumeric characters. Spaces or any special characters other than - (hyphen), _ (underscore), : (colon), and . (period) are not allowed.
  * size:(int) Virtual drive size in MebiBytes. Size is mandatory field except when the Expand to Available option is enabled.
  * access_policy:(string) Access policy that host has on this virtual drive.
    - Default - Use platform default access mode.
    - ReadWrite - Enables host to perform read-write on the VD.
    - ReadOnly - Host can only read from the VD.
    - Blocked - Host can neither read nor write to the VD.
  * drive_cache:(string) Disk cache policy for the virtual drive.
    - Default - Use platform default drive cache mode.
    - NoChange - Drive cache policy is unchanged.
    - Enable - Enables IO caching on the drive.
    - Disable - Disables IO caching on the drive.
  * read_policy:(string) Read ahead mode to be used to read data from this virtual drive.
    - Default - Use platform default read ahead mode.
    - ReadAhead - Use read ahead mode for the policy.
    - NoReadAhead - Do not use read ahead mode for the policy.
  * strip_size:(int) Desired strip size - Allowed values are 64KiB, 128KiB, 256KiB, 512KiB, 1024KiB.
    - 64 - Number of bytes in a strip is 64 Kibibytes.
    - 128 - Number of bytes in a strip is 128 Kibibytes.
    - 256 - Number of bytes in a strip is 256 Kibibytes.
    - 512 - Number of bytes in a strip is 512 Kibibytes.
    - 1024 - Number of bytes in a strip is 1024 Kibibytes or 1 Mebibyte.
  * write_policy:(string) Write mode to be used to write data to this virtual drive.
    - Default - Use platform default write mode.
    - WriteThrough - Data is written through the cache and to the physical drives. Performance is improved, because subsequent reads of that data can be satisfied from the cache.
    - WriteBackGoodBbu - Data is stored in the cache, and is only written to the physical drives when space in the cache is needed. Virtual drives requesting this policy fall back to Write Through caching when the battery backup unit (BBU) cannot guarantee the safety of the cache in the event of a power failure.
    - AlwaysWriteBack - With this policy, write caching remains Write Back even if the battery backup unit is defective or discharged.
  EOT
  type = list(object(
    {
      access_policy       = string
      boot_drive          = string
      drive_cache         = string
      expand_to_available = bool
      name                = string
      read_policy         = string
      size                = number
      strip_size          = number
      write_policy        = string
    }
  ))
}
