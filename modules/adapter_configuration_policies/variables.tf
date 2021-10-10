#____________________________________________________________
#
# Adapter Configuration Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_fip" {
  default     = true
  description = "Status of FIP protocol on the adapter interfaces."
  type        = bool
}

variable "enable_lldp" {
  default     = true
  description = "Status of LLDP protocol on the adapter interfaces."
  type        = bool
}

variable "enable_port_channel" {
  default     = true
  description = <<-EOT
  When Port Channel is enabled, two vNICs and two vHBAs are available for use on the adapter card.
  When disabled, four vNICs and four vHBAs are available for use on the adapter card. Disabling
  port channel reboots the server. Port Channel is supported only for Cisco VIC 1455/1457 adapters.
  EOT
  type        = bool
}

variable "fec_mode_1" {
  default     = "cl91"
  description = <<-EOT
  DCE Interface 1 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.
  * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.
  * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.
  * Off - Disable FEC mode on the DCE Interface.
  EOT
  type        = string
}

variable "fec_mode_2" {
  default     = "cl91"
  description = <<-EOT
  DCE Interface 2 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.
  * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.
  * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.
  * Off - Disable FEC mode on the DCE Interface.
  EOT
  type        = string
}

variable "fec_mode_3" {
  default     = "cl91"
  description = <<-EOT
  DCE Interface 3 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.
  * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.
  * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.
  * Off - Disable FEC mode on the DCE Interface.
  EOT
  type        = string
}

variable "fec_mode_4" {
  default     = "cl91"
  description = <<-EOT
  DCE Interface 4 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.
  * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.
  * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.
  * Off - Disable FEC mode on the DCE Interface.
  EOT
  type        = string
}

variable "name" {
  default     = "vic_adapter"
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

variable "pci_slot" {
  default     = "MLOM"
  description = "PCIe slot where the VIC adapter is installed. Supported values are (1-15) and MLOM."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
