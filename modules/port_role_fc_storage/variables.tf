#_____________________________________________________________________________
#
# Intersight Port Policy - Port Role - Fibre-Channel Uplink Variables Section
#_____________________________________________________________________________

variable "admin_speed" {
  default     = "16Gbps"
  description = <<-EOT
  Admin configured speed for the port.
  * Auto - Admin configurable speed AUTO ( default ).
  * 8Gbps - Admin configurable speed 8Gbps.
  * 16Gbps - Admin configurable speed 16Gbps.
  * 32Gbps - Admin configurable speed 32Gbps.
  EOT
  type        = string
}

variable "breakout_port_id" {
  default     = 0
  description = "Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch."
  type        = number
}

variable "port_list" {
  default     = ""
  description = "String of Ports to assign to the Port Policy."
  type        = string
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

variable "vsan_id" {
  default     = 1
  description = "Virtual San Identifier associated to the FC port."
  type        = number
}
