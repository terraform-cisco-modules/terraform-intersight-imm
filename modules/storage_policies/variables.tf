#____________________________________________________________
#
# Storage Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "global_hot_spares" {
  default     = ""
  description = "A collection of disks that is to be used as hot spares, globally, for all the RAID groups. Allowed value is a number range separated by a comma or a hyphen."
  type        = string
}

variable "m2_virtual_drive" {
  default     = []
  description = <<-EOT
  Virtual Drive configuration for M.2 RAID controller. This complex property has following sub-properties:
  * controller_slot:(string) Select the M.2 RAID controller slot on which the virtual drive is to be created. For example:
    - MSTOR-RAID-1 - Virtual drive will be created on the M.2 RAID controller in the first slot.
    - MSTOR-RAID-2 - Virtual drive will be created on the M.2 RAID controller in the second slot, if available.
    - MSTOR-RAID-1,MSTOR-RAID-2 - Virtual drive will be created on the M.2 RAID controller in both the slots, if available.
  * enable:(bool) If enabled, this will create a virtual drive on the M.2 RAID controller.
  EOT
  type        = list(map(string))
}

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

variable "raid0_drive" {
  default     = []
  description = <<-EOT
  This complex property has following sub-properties:
  * drive_slots:(string) The set of drive slots where RAID0 virtual drives must be created.
  * enable:(bool) If enabled, this will create a RAID0 virtual drive per disk and encompassing the whole disk.
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
  type        = list(map(string))
}

# variable "retain_policy_virtual_drives" {
#   default     = true
#   description = "Retains the virtual drives defined in policy if they exist already. If this flag is false, the existing virtual drives are removed and created again based on virtual drives in the policy."
#   type        = bool
# }

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "unused_disks_state" {
  default     = "NoChange"
  description = <<-EOT
  State to which disks, not used in this policy, are to be moved.
  * NoChange - (Default) Drive state will not be modified by Storage Policy.
  * UnconfiguredGood - Unconfigured good state -ready to be added in a RAID group.
  * Jbod - JBOD state where the disks start showing up to Host OS.
  EOT
  type        = string
}

variable "use_jbod_for_vd_creation" {
  default     = false
  description = "Disks in JBOD State are used to create virtual drives."
  type        = bool
}

