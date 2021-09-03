#____________________________________________________________
#
# Ethernet Network Control Policy Variables Section.
#____________________________________________________________

variable "action_on_uplink_fail" {
  default     = "linkDown"
  description = <<-EOT
  Determines the state of the virtual interface (vethernet / vfc) on the switch when a suitable uplink is not pinned.  Options are:
  * linkDown
  * warning
  Important! If the Action on Uplink is set to Warning, the switch will not fail over if uplink connectivity is lost.
  EOT
  type        = string
}

variable "cdp_enable" {
  default     = false
  description = "Flag to Enable or Disable CDP on an interface."
  type        = bool
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "lldp_enable_receive" {
  default     = false
  description = "Determines if the LLDP frames can be received by an interface on the switch."
  type        = bool
}

variable "lldp_enable_transmit" {
  default     = false
  description = "Determines if the LLDP frames can be transmitted by an interface on the switch."
  type        = bool
}

variable "mac_register_mode" {
  default     = "nativeVlanOnly"
  description = <<-EOT
  Determines the MAC addresses that have to be registered with the switch.  Options are:
  * allVlans
  * nativeVlanOnly
  EOT
  type        = string
}

variable "mac_security_forge" {
  default     = "allow"
  description = <<-EOT
  Determines if the MAC forging is allowed or denied on an interface.  Options are:
  * allow
  * deny
  EOT
  type        = string
}

variable "name" {
  default     = "vnic_network_control"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

