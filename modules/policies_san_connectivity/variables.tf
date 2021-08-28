#____________________________________________________________
#
# Ethernet (vHBA) SAN Connectivity Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "san_connectivity"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "placement_mode" {
  default     = "custom"
  description = <<-EOT
  The mode used for placement of vNICs on network adapters. It can either be Auto or Custom.
  * auto - The placement of the vNICs / vHBAs on network adapters is automatically determined by the system.
  * custom - The placement of the vNICs / vHBAs on network adapters is manually chosen by the user.
  EOT
  type        = string
}

variable "static_wwnn_address" {
  default     = ""
  description = "The WWNN address for the server node must be in hexadecimal format xx:xx:xx:xx:xx:xx:xx:xx.  Allowed ranges are 20:00:00:00:00:00:00:00 to 20:FF:FF:FF:FF:FF:FF:FF or from 50:00:00:00:00:00:00:00 to 5F:FF:FF:FF:FF:FF:FF:FF.  To ensure uniqueness of WWN's in the SAN fabric, you are strongly encouraged to use the WWN prefix - 20:00:00:25:B5:xx:xx:xx."
  type        = string
}

variable "target_platform" {
  default     = "FIAttached"
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in 'Standalone' mode or which is attached to a Fabric Interconnect 'FIAttached' managed by Intersight."
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "wwnn_address_type" {
  default     = "POOL"
  description = <<-EOT
  Type of allocation selected to assign a WWNN address for the server node.
  * POOL - The user selects a pool from which the mac/wwn address will be leased for the Virtual Interface.
  * STATIC - The user assigns a static mac/wwn address for the Virtual Interface.
  EOT
  type        = string
}

variable "wwnn_pool" {
  default     = []
  description = "WWNN Pool to Assign to the Policy."
  type        = set(string)
}
