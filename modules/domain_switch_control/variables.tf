#____________________________________________________________
#
# UCS Domain Switch Control Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "mac_aging_option" {
  default     = "Default"
  description = "his specifies one of the option to configure the MAC address aging time.\r\n * Default - This option sets the default MAC address aging time to 14500 seconds for End Host mode.\r\n * Custom - This option allows the the user to configure the MAC address aging time on the switch. For Switch Model UCS-FI-6454 or higher, the valid range is 120 to 918000 seconds and the switch will set the lower multiple of 5 of the given time.\r\n * Never - This option disables the MAC address aging process and never allows the MAC address entries to get removed from the table."
  type        = string
}

variable "mac_aging_time" {
  default     = 120
  description = "Define the MAC address aging time in seconds.  Range is between 120 to 918000, in multiples of 5, when mac_aging_option is set to Custom."
  type        = string
}

variable "name" {
  default     = "switch_control"
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

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "udld_message_interval" {
  default     = 15
  description = "Configures the time between UDLD probe messages on ports that are in advertisement mode and arecurrently determined to be bidirectional.  Valid values are from 7 to 90 seconds."
  type        = number
}

variable "udld_recovery_action" {
  default     = "none"
  description = "UDLD recovery when enabled, attempts to bring an UDLD error-disabled port out of reset.\r\n * none - No action is taken when a port has been disabled.\r\n * reset - The switch will attempt to bring a UDLD error-disabled port back online."
  type        = string
}

variable "vlan_optimization" {
  default     = false
  description = "To enable or disable the VLAN port count optimization."
  type        = bool
}
