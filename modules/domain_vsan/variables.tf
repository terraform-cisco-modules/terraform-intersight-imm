#____________________________________________________________
#
# UCS Domain VSANs Variables Section.
#____________________________________________________________

variable "default_zoning" {
  default     = "Disabled"
  description = "Enables or Disables the default zoning state.\r\n * Enabled - Admin configured Enabled State.\r\n * Disabled - Admin configured Disabled State."
  type        = string
}

variable "fc_zone_sharing_mode" {
  default     = ""
  description = "Logical grouping mode for fc ports."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vsan_list" {
  default = {}
  type = map(object({
    fcoe_vlan = number
    vsan_id   = number
  }))
}

variable "vsan_prefix" {
  default     = "VLAN"
  description = "Prefix Name for VSANs."
  type        = string
}

variable "vsan_policy_moid" {
  description = "VSAN Policy (Fibre-Channel Network Policy) moid."
  type        = string
}
