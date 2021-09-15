terraform {
  experiments = [module_variable_optional_attrs]
}

#___________________________________________________________________________
#
# Intersight Port Policy - FC Uplink Port Channel Policy Variables Section
#___________________________________________________________________________

variable "admin_speed" {
  default     = "16Gbps"
  description = <<-EOT
  Admin configured speed for the port.
  * Auto - Admin configurable speed AUTO.
  * 8Gbps - Admin configurable speed 8Gbps.
  * 16Gbps - (default).  Admin configurable speed 16Gbps.
  * 32Gbps - Admin configurable speed 32Gbps.
  EOT
  type        = string
}

variable "fill_pattern" {
  default     = "Idle"
  description = <<-EOT
  Fill pattern to differentiate the configs in NPIV.
  * Arbff - Fc Fill Pattern type Arbff.
  * Idle - Fc Fill Pattern type Idle.
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
  default     = 1
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = number
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

variable "vsan_id" {
  default     = 1
  description = "Virtual San Identifier associated to the FC port."
  type        = number
}
