terraform {
  experiments = [module_variable_optional_attrs]
}

#____________________________________________________________
#
# vMedia Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_virtual_media" {
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

variable "vmedia_mounts" {
  default     = {}
  description = <<-EOT
  Key - Name of the Virtual Media Mount
  * authentication_protocol - Type of Authentication protocol when CIFS is used for communication with the remote server.
    - none - (Default) No authentication is used.
    - ntlm - NT LAN Manager (NTLM) security protocol. Use this option only with Windows 2008 R2 and Windows 2012 R2.
    - ntlmi - NTLMi security protocol. Use this option only when you enable Digital Signing in the CIFS Windows server.
    - ntlmv2 - NTLMv2 security protocol. Use this option only with Samba Linux.
    - ntlmv2i - NTLMv2i security protocol. Use this option only with Samba Linux.
    - ntlmssp - NT LAN Manager Security Support Provider (NTLMSSP) protocol. Use this option only with Windows 2008 R2 and Windows 2012 R2.
    - ntlmsspi - NTLMSSPi protocol. Use this option only when you enable Digital Signing in the CIFS Windows server.
  * device_type - Type of remote Virtual Media device.
    - cdd - (Default) Uses compact disc drive as the virtual media mount device.
    - hdd - Uses hard disk drive as the virtual media mount device.
  * file_location - The remote file location path for the virtual media mapping. Accepted formats are:
    - HDD for CIFS/NFS: hostname-or-IP/filePath/fileName.img
    - CDD for CIFS/NFS: hostname-or-IP/filePath/fileName.iso
    - HDD for HTTP/S: http[s]://hostname-or-IP/filePath/fileName.img
    - CDD for HTTP/S: http[s]://hostname-or-IP/filePath/fileName.iso
  * mount_options - Mount options for the Virtual Media mapping. The field can be left blank or filled in a comma separated list with the following options.
    - For NFS, supported options are:
      * ro
      * rw
      * nolock
      * noexec
      * soft
      * port=VALUE
      * timeo=VALUE
      * retry=VALUE
    - For CIFS, supported options are:
      * soft
      * nounix
      * noserverino
      * guest
      Note: For CIFS version less than 3.0, vers=VALUE is mandatory. e.g. vers=2.0
    - For HTTP/HTTPS, the only supported option is:
      * noauto
  * password - A Number used in the loop to point to the variable "vmedia_password_[1-5]".  So 1 would be vmedia_password_1.  Sensitive Values are not supported in a loop
  * protocol - Protocol to use to communicate with the remote server.
    - nfs - NFS protocol for vmedia mount.
    - cifs - CIFS protocol for vmedia mount.
    - http - HTTP protocol for vmedia mount.
    - https - HTTPS protocol for vmedia mount.
  * username - Username to log in to the remote server, if authentication is enabled.
  EOT
  type = map(object(
    {
      authentication_protocol = optional(string)
      device_type             = optional(string)
      file_location           = string
      mount_options           = optional(string)
      password                = optional(number)
      protocol                = optional(string)
      username                = optional(string)
    }
  ))
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

variable "vmedia_password_1" {
  default     = ""
  description = "Password for vMedia "
  sensitive   = true
  type        = string
}

variable "vmedia_password_2" {
  default     = ""
  description = "Password for vMedia "
  sensitive   = true
  type        = string
}

variable "vmedia_password_3" {
  default     = ""
  description = "Password for vMedia "
  sensitive   = true
  type        = string
}

variable "vmedia_password_4" {
  default     = ""
  description = "Password for vMedia "
  sensitive   = true
  type        = string
}

variable "vmedia_password_5" {
  default     = ""
  description = "Password for vMedia "
  sensitive   = true
  type        = string
}
