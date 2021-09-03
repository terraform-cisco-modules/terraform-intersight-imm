#____________________________________________________________
#
# Ethernet Qos Policy Variables Section.
#____________________________________________________________

variable "burst" {
  default     = 1024
  description = "The burst traffic, in bytes, allowed on the vNIC.  Value can be between 1024-1000000."
  type        = number
}

variable "cos" {
  default     = 0
  description = "Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6. For FIAttached this should always be 0."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_trust_host_cos" {
  default     = false
  description = "Enables usage of the Class of Service provided by the operating system."
  type        = bool
}

variable "mtu" {
  default     = 1500
  description = "The Maximum Transmission Unit (MTU) or packet size that the virtual interface accepts.  Value can be between 1500-9000."
  type        = number
}

variable "priority" {
  default     = "Best Effort"
  description = <<-EOT
  The priortity matching the System QoS specified in the fabric profile.  Options are:
  * Platinum
  * Gold
  * Silver
  * Bronze
  * Best Effort
  * FC
  EOT
  type        = string
}

variable "name" {
  default     = "vnic_qos"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "rate_limit" {
  default     = 0
  description = "The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.  Range is between 0-100000."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

