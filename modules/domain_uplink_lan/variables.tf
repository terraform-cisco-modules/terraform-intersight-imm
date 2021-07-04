#____________________________________________________________
#
# UCS Domain LAN Uplink Policy Variables Section.
#____________________________________________________________

variable "breakout_sw_port" {
  default     = 0
  description = "Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch."
  type        = number
}

variable "fec" {
  default     = "Auto"
  description = "Forward error correction configuration for the port.\r\n * Auto - Forward error correction option 'Auto'.\r\n * Cl91 - Forward error correction option 'cl91'.\r\n * Cl74 - Forward error correction option 'cl74'."
  type        = string
}

variable "flow_control_moid" {
  default     = []
  description = "A reference to a fabricFlowControlPolicy resource."
  type        = set(string)
}

variable "lan_uplink_port_list" {
  default     = [49]
  description = "List of Ports to Assign to the LAN Uplink Policy."
  type        = set(string)
}

variable "lan_uplink_speed" {
  default     = "Auto"
  description = "Admin configured speed for the port.\r\n * Auto - Admin configurable speed AUTO ( default ).\r\n * 1Gbps - Admin configurable speed 1Gbps.\r\n * 10Gbps - Admin configurable speed 10Gbps.\r\n * 25Gbps - Admin configurable speed 25Gbps.\r\n * 40Gbps - Admin configurable speed 40Gbps.\r\n * 100Gbps - Admin configurable speed 100Gbps."
  type        = string
}

variable "link_control_moid" {
  default     = []
  description = "A reference to a fabricLinkControlPolicy resource."
  type        = set(string)
}

variable "port_policy_moid" {
  description = " A reference to a fabricPortPolicy resource."
  type        = string
}

variable "slot_id" {
  default     = 1
  description = "Slot Identifier of the Switch/FEX/Chassis Interface."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
