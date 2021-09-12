#________________________________________________________________________
#
# Intersight Port Policy - Port Role - Server Variables Section
#________________________________________________________________________

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
