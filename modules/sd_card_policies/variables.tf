#____________________________________________________________
#
# SD Card Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_diagnostics" {
  default     = false
  description = <<-EOT
  Flag to Enable the Diagnostics Utility Partition.
  * When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.
  * Note:
    - This policy is currently not supported on M6 servers.
    - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.
    - Diagnostics is supported only for the M5 servers.
    - UserPartition drives can be renamed only on the M4 servers.
    - FlexFlash configuration is not supported on C460 M4 servers.
    - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card.
  EOT
  type        = bool
}

variable "enable_drivers" {
  default     = false
  description = <<-EOT
  Flag to Enable the Drivers Utility Partition.
  * When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.
  * Note:
    - This policy is currently not supported on M6 servers.
    - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.
    - Diagnostics is supported only for the M5 servers.
    - UserPartition drives can be renamed only on the M4 servers.
    - FlexFlash configuration is not supported on C460 M4 servers.
    - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card.
  EOT
  type        = bool
}

variable "enable_huu" {
  default     = false
  description = <<-EOT
  Flag to Enable the HostUpgradeUtility Utility Partition.
  * When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.
  * Note:
    - This policy is currently not supported on M6 servers.
    - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.
    - Diagnostics is supported only for the M5 servers.
    - UserPartition drives can be renamed only on the M4 servers.
    - FlexFlash configuration is not supported on C460 M4 servers.
    - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card.
  EOT
  type        = bool
}

variable "enable_os" {
  default     = false
  description = <<-EOT
  Flag to Enable the OperatingSystem Partition.
  * When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.
  * Note:
    - This policy is currently not supported on M6 servers.
    - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.
    - Diagnostics is supported only for the M5 servers.
    - UserPartition drives can be renamed only on the M4 servers.
    - FlexFlash configuration is not supported on C460 M4 servers.
    - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card.
  EOT
  type        = bool
}

variable "enable_scu" {
  default     = false
  description = <<-EOT
  Flag to Enable the ServerConfigurationUtility Utility Partition.
  * When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.
  * Note:
    - This policy is currently not supported on M6 servers.
    - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.
    - Diagnostics is supported only for the M5 servers.
    - UserPartition drives can be renamed only on the M4 servers.
    - FlexFlash configuration is not supported on C460 M4 servers.
    - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card.
  EOT
  type        = bool
}

variable "name" {
  default     = "sd_card"
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
