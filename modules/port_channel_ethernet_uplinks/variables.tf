#__________________________________________________________________________
#
# Intersight Port Policy - Ethernet Uplink Port Channel Variables Section
#__________________________________________________________________________

variable "admin_speed" {
  default     = "Auto"
  description = <<-EOT
  Admin configured speed for the port.
  * Auto - Admin configurable speed Auto.
  * 1Gbps - Admin configurable speed 1Gbps.
  * 10Gbps - Admin configurable speed 10Gbps.
  * 25Gbps - Admin configurable speed 25Gbps.
  * 40Gbps - Admin configurable speed 40Gbps.
  * 100Gbps - Admin configurable speed 100Gbps.
  EOT
  type        = string
}

variable "breakout_port_id" {
  default     = 0
  description = "Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch."
  type        = number
}

variable "flow_control_policy_moid" {
  default     = []
  description = "A reference to a fabricFlowControlPolicy resource."
  type        = set(string)
}

variable "port_list" {
  default     = [49, 50]
  description = "List of Ports to Assign to the LAN Port-Channel Policy."
  type        = set(string)
}

variable "pc_id" {
  default     = 49
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = string
}

variable "link_aggregation_policy_moid" {
  default     = []
  description = "A reference to a fabricLinkAggregationPolicy resource."
  type        = set(string)
}

variable "link_control_policy_moid" {
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
