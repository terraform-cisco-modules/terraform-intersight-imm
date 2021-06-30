#____________________________________________________________
#
# UCS Domain Server Port Policy Variables Section.
#____________________________________________________________

variable "breakout_sw_port" {
  default     = 0
  description = "Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch."
  type        = number
}

variable "port_list_type" {
  default     = "list"
  description = "Port list is the group of ports to assign to the policy.\r\n * list - this is to assign a list of ports to the policy using the port_list variable.\r\n * range - will assign a rang of ports with the port_start and port_stop variables."
  type        = string
}

variable "port_list" {
  default     = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
  description = "List of Ports to assign to the Server Port Policy."
  type        = set(string)
}

variable "port_policy_moid" {
  default     = []
  description = " A reference to a fabricPortPolicy resource."
  type        = list(map(string))
}

variable "port_start" {
  default     = 5
  description = "Beginning port to assign to the Server Port Policy."
  type        = number
}

variable "port_stop" {
  default     = 18
  description = "Ending port to assign to the Server Port Policy."
  type        = number
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

#____________________________________________________________
#
# UCS Domain LAN Uplink Port-Channel Policy Variables Section.
#____________________________________________________________

variable "lan_uplink_pc_ports" {
  default     = []
  description = "List of Ports to Assign to the LAN Port-Channel Policy."
  type        = set(string)
}

variable "lan_uplink_pc_id" {
  default     = 53
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = string
}

variable "link_aggregation_moid" {
  default     = []
  description = "A reference to a fabricLinkAggregationPolicy resource."
  type        = set(string)
}
