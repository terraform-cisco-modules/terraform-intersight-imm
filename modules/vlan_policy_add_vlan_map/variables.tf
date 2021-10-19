#____________________________________________________________
#
# UCS Domain VLANs Variables Section.
#____________________________________________________________

variable "auto_allow_on_uplinks" {
  default     = false
  description = "Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI."
  type        = bool
}

variable "is_native" {
  default     = false
  description = "Used to determine if this VLAN should be untagged on the interfaces."
  type        = bool
}

variable "multicast_moid" {
  description = "Multicast Policy moid map."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vlan_map" {
  description = <<-EOT
  This VLAN Map should contain key/value pairs of prefix and vlan_id.  In Example:
  vlan_map = [
    {
      prefix  = "test"
      vlan_id = 123
    },
    {
      prefix  = "test"
      vlan_id = 124
    }
  ]
  This will be configured as test-vl0123 and test-vl0124 in intersight.
  EOT
  type        = list(map(string))
}

variable "vlan_policy_moid" {
  description = "VLAN Policy (Ethernet Network Policy) moid."
  type        = string
}
