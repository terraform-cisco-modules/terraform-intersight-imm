#____________________________________________________________
#
# UCS Domain Port Mode Policy Variables Section.
#____________________________________________________________

variable "custom_mode" {
  default     = "FibreChannel"
  description = <<-EOT
  Custom Port Mode specified for the port range.
  * FibreChannel - Fibre Channel Port Types.
  * BreakoutEthernet10G - Breakout Ethernet 10G Port Type.
  * BreakoutEthernet25G - Breakout Ethernet 25G Port Type.
  EOT
  type        = string
}

variable "port_list" {
  default     = [1, 4]
  description = "List of Ports to Change the default Port Mode."
  type        = list(number)
}

variable "port_policy_moid" {
  description = " A reference to a fabricPortPolicy resource."
  type        = string
}

variable "slot_id" {
  default     = 1
  description = "Slot Identifier of the switch."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
