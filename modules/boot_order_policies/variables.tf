#____________________________________________________________
#
# Boot Order Policy Variables Section.
#____________________________________________________________

variable "boot_devices" {
  default     = {}
  description = <<-EOT
  Map of Boot Devices to Assign to the Boot Policy.
  * additional_attributes - Please Refer to the Intersight Provider for how to Format the additional Attributes.
  * enabled - Specifies if the boot device is enabled or disabled.
  * name - A name that helps identify a boot device. It can be any string that adheres to the following constraints. It should start and end with an alphanumeric character. It can have underscores and hyphens. It cannot be more than 30 characters.
  * object_type - This will Match the Additional Properties Attributes configured above.  Options are:
    - boot.Iscsi
    - boot.LocalCdd
    - boot.LocalDisk
    - boot.Nvme
    - boot.PchStorage
    - boot.Pxe
    - boot.San
    - boot.SdCard
    - boot.UefiShell
    - boot.Usb
    - boot.VirtualMedia
  EOT
  type = map(object(
    {
      additional_properties = any
      enabled               = bool
      name                  = string
      object_type           = string
    }
  ))
}

variable "boot_mode" {
  default     = "Uefi"
  description = <<-EOT
  Sets the BIOS boot mode. UEFI uses the GUID Partition Table (GPT) whereas Legacy mode uses the Master Boot Record (MBR) partitioning scheme. To apply this setting, Please reboot the server.
  * Legacy - Legacy mode refers to the traditional process of booting from BIOS. Legacy mode uses the Master Boot Record (MBR) to locate the bootloader.
  * Uefi - UEFI mode uses the GUID Partition Table (GPT) to locate EFI Service Partitions to boot from.
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_secure_boot" {
  default     = false
  description = "If UEFI secure boot is enabled, the boot mode is set to UEFI by default. Secure boot enforces that device boots using only software that is trusted by the Original Equipment Manufacturer (OEM)."
  type        = bool
}

variable "name" {
  default     = "boot_order"
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
