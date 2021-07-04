#____________________________________________________________
#
# Ethernet (vNIC) Adapter Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "fip_enabled" {
  default     = true
  description = "Enables advanced filtering on the interface."
  type        = bool
}

variable "int0_fec_mode" {
  default     = "cl91"
  description = "Interface 0 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.\r\n * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.\r\n * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.\r\n * Off - Disable FEC mode on the DCE Interface."
  type        = string
}

variable "int1_fec_mode" {
  default     = "cl91"
  description = "Interface 1 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.\r\n * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.\r\n * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.\r\n * Off - Disable FEC mode on the DCE Interface."
  type        = string
}

variable "int2_fec_mode" {
  default     = "cl91"
  description = "Interface 2 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.\r\n * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.\r\n * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.\r\n * Off - Disable FEC mode on the DCE Interface."
  type        = string
}

variable "int3_fec_mode" {
  default     = "cl91"
  description = "Interface 3 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.\r\n * cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.\r\n * cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.\r\n * Off - Disable FEC mode on the DCE Interface."
  type        = string
}

variable "lldp_enabled" {
  default     = true
  description = "Status of Accelerated Receive Flow Steering on the virtual ethernet interface."
  type        = bool
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

variable "portchannel_enabled" {
  default     = true
  description = "When Port Channel is enabled, two vNICs and two vHBAs are available for use on the adapter card. When disabled, four vNICs and four vHBAs are available for use on the adapter card. Disabling port channel reboots the server. Port Channel is supported only for Cisco VIC 1455/1457 adapters."
  type        = bool
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "slot_id" {
  default     = "MLOM"
  description = "PCIe slot where the VIC adapter is installed. Supported values are (1-15) and MLOM."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
