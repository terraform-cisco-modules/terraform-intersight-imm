#____________________________________________________________
#
# UCS Domain SAN Uplink Port-Channel Policy Variables Section.
#____________________________________________________________

variable "breakout_sw_port" {
  default     = 0
  description = "Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch."
  type        = number
}

variable "fill_pattern" {
  default     = "Idle"
  description = "Fill pattern to differentiate the configs in NPIV.\r\n * Idle - Fc Fill Pattern type Idle.\r\n * Arbff - Fc Fill Pattern type Arbff."
  type        = string
}

variable "san_uplink_pc_ports" {
  default     = []
  description = "List of Ports to Assign to the SAN Port-Channel Policy."
  type        = set(string)
}

variable "san_uplink_pc_id" {
  default     = 1
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = string
}

variable "san_uplink_speed" {
  default     = "Auto"
  description = "Admin configured speed for the port.\r\n * Auto - Admin configurable speed AUTO ( default ).\r\n * 8Gbps - Admin configurable speed 8Gbps.\r\n * 16Gbps - Admin configurable speed 16Gbps.\r\n * 32Gbps - Admin configurable speed 32Gbps."
  type        = string
}

variable "port_policy_moid" {
  default     = []
  description = " A reference to a fabricPortPolicy resource."
  type        = list(map(string))
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

variable "vsan_id" {
  default     = 1
  description = "Virtual San Identifier associated to the FC port."
  type        = number
}
