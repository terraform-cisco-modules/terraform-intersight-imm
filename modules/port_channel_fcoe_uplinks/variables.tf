terraform {
  experiments = [module_variable_optional_attrs]
}

#__________________________________________________________________________
#
# Intersight Port Policy - FCoE Uplink Port Channel Variables Section
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

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
