#____________________________________________________________
#
# Multicast Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "multicast"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "querier_ip_address" {
  default     = ""
  description = "IP Address of the IGMP Querier to Assign to the VLAN through this Policy."
  type        = string
}

variable "querier_ip_address_peer" {
  default     = ""
  description = "Used to define the IGMP Querier IP address of the peer switch."
  type        = string
}

variable "querier_state" {
  default     = "Disabled"
  description = <<-EOT
  Administrative state of the IGMP Querier for the VLANs Assigned to this Policy.  Options are:
  * Disabled - (Default)
  * Enabled
  EOT
  type        = string
}

variable "snooping_state" {
  default     = "Enabled"
  description = <<-EOT
  Administrative State for Snooping for the VLANs Assigned to this Policy.
  * Disabled
  * Enabled - (Default)
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
