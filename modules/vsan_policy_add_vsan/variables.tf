#____________________________________________________________
#
# VSAN Policy -> Add VSAN Variables Section.
#____________________________________________________________

variable "default_zoning" {
  default     = "Disabled"
  description = <<-EOT
  Enables or Disables the default zoning state.
  * Enabled - Admin configured Enabled State.
  * Disabled - Admin configured Disabled State.
  EOT
  type        = string
}

variable "fc_zone_sharing_mode" {
  default     = ""
  description = "Logical grouping mode for fc ports."
  type        = string
}

variable "fcoe_vlan_id" {
  description = "FCoE VLAN Identifier to Assign to the VSAN Policy."
  type        = number
}

variable "name" {
  default     = "vsan"
  description = "Name for the VSAN."
  type        = string
}

variable "vsan_id" {
  description = "VSAN Identifier to Assign to the VSAN Policy."
  type        = number
}

variable "vsan_policy_moid" {
  description = "VSAN Policy (Fibre-Channel Network Policy) moid."
  type        = string
}

variable "vsan_scope" {
  default     = "Uplink"
  description = <<-EOT
  Used to indicate whether the VSAN Id is defined for storage or uplink or both traffics in FI.
    * Uplink - Vsan associated with uplink network.
    * Storage - Vsan associated with storage network.
    * Common - Vsan that is common for uplink and storage network.
  EOT
  type        = string
}
