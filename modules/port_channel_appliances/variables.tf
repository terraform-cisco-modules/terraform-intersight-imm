terraform {
  experiments = [module_variable_optional_attrs]
}

#___________________________________________________________________
#
# Intersight Port Policy - Port-Channel Appliance Variables Section
#___________________________________________________________________

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

variable "interfaces" {
  default     = []
  description = "List of Ports to Assign to the LAN Port-Channel Policy."
  type = list(object(
    {
      breakout_port_id = optional(number)
      port_id          = number
      slot_id          = number
    }
  ))
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

variable "pc_id" {
  default     = 1
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = number
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

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
