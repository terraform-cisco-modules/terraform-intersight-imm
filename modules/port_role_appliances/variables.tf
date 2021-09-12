#__________________________________________________________________
#
# Intersight Port Policy - Port Role - Appliance Variables Section
#__________________________________________________________________

variable "admin_speed" {
  default     = "Auto"
  description = <<-EOT
  Admin configured speed for the port.
  * Auto - Admin configurable speed AUTO ( default ).
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

variable "ethernet_network_control_policy_moid" {
  default     = []
  description = "A reference to a fabricEthNetworkControlPolicy resource."
  type        = set(string)
}

variable "ethernet_network_group_policy_moid" {
  default     = []
  description = "A reference to a fabricEthNetworkGroupPolicy resource."
  type        = set(string)
}

variable "fec" {
  default     = "Auto"
  description = <<-EOT
  Forward error correction configuration for the port.
  * Auto - Forward error correction option 'Auto'.
  * Cl91 - Forward error correction option 'cl91'.
  * Cl74 - Forward error correction option 'cl74'.
  EOT
  type        = string
}

variable "mode" {
  default     = "trunk"
  description = <<-EOT
  Port mode to be set on the appliance port.
  * access - Access Mode Switch Port Type.
  * trunk (default) - Trunk Mode Switch Port Type.
  EOT
  type        = string
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

variable "priority" {
  default     = "Best Effort"
  description = <<-EOT
  The 'name' of the System QoS Class.
  * Best Effort - (Default) QoS Priority for Best-effort traffic.
  * Bronze - QoS Priority for Bronze traffic.
  * FC - QoS Priority for FC traffic.
  * Gold - QoS Priority for Gold traffic.
  * Platinum - QoS Priority for Platinum traffic.
  * Silver - QoS Priority for Silver traffic.
  EOT
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
