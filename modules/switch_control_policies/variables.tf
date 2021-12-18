#____________________________________________________________
#
# Intersight Switch Control Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "ethernet_switching_mode" {
  default     = "end-host"
  description = <<-EOT
  Enable or Disable Ethernet End Host Switching Mode.
    * end-host - In end-host mode, the fabric interconnects appear to the upstream devices as end hosts with multiple links.  In this mode, the switch does not run Spanning Tree Protocol and avoids loops by following a set of rules for traffic forwarding.  In case of ethernet switching mode - Ethernet end-host mode is also known as Ethernet host virtualizer.
    * switch - In switch mode, the switch runs Spanning Tree Protocol to avoid loops, and broadcast and multicast packets are handled in the traditional way.This is the traditional switch mode.
  EOT
  type        = string
}

variable "fc_switching_mode" {
  default     = "end-host"
  description = <<-EOT
  Enable or Disable FC End Host Switching Mode.
    * end-host - In end-host mode, the fabric interconnects appear to the upstream devices as end hosts with multiple links.  In this mode, the switch does not run Spanning Tree Protocol and avoids loops by following a set of rules for traffic forwarding.  In case of ethernet switching mode - Ethernet end-host mode is also known as Ethernet host virtualizer.
    * switch - In switch mode, the switch runs Spanning Tree Protocol to avoid loops, and broadcast and multicast packets are handled in the traditional way.This is the traditional switch mode.
  EOT
  type        = string
}

variable "mac_aging_option" {
  default     = "Default"
  description = <<-EOT
  This specifies one of the option to configure the MAC address aging time.
  * Custom - This option allows the the user to configure the MAC address aging time on the switch. For Switch Model UCS-FI-6454 or higher, the valid range is 120 to 918000 seconds and the switch will set the lower multiple of 5 of the given time.
  * Default - This option sets the default MAC address aging time to 14500 seconds for End Host mode.
  * Never - This option disables the MAC address aging process and never allows the MAC address entries to get removed from the table.
  EOT
  type        = string
}

variable "mac_aging_time" {
  default     = 14500
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
  default     = {}
  description = <<-EOT
  Map of Profiles to Assign to the Policy.
  * moid - Managed Object Identifier for the Managed Resource.
  * object_type - Object Type to Assign in the Profile Configuration.
    - fabric.SwitchProfile - For UCS Domain Switch Profiles.
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

variable "udld_message_interval" {
  default     = 15
  description = "Configures the time between UDLD probe messages on ports that are in advertisement mode and arecurrently determined to be bidirectional.  Valid values are from 7 to 90 seconds."
  type        = number
}

variable "udld_recovery_action" {
  default     = "none"
  description = <<-EOT
  UDLD recovery when enabled, attempts to bring an UDLD error-disabled port out of reset.
  * none - No action is taken when a port has been disabled.
  * reset - The switch will attempt to bring a UDLD error-disabled port back online.
  EOT
  type        = string
}

variable "vlan_optimization" {
  default     = false
  description = "To enable or disable the VLAN port count optimization."
  type        = bool
}
