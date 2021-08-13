#____________________________________________________________
#
# Fibre-Channel Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = <<-EOT
  Assignment order decides the order in which the next identifier is allocated.
  * sequential - Identifiers are assigned in a sequential order.
  * default - Assignment order is decided by the system.
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Fiber-Channel Pool."
  type        = string
}

variable "id_blocks" {
  default     = []
  description = "List of WWxN's Configuration Parameters to Assign to the Fiber-Channel Pool."
  type        = list(map(string))
}

variable "name" {
  default     = "fc_pool"
  description = "Name for the Fiber-Channel Pool."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "pool_purpose" {
  default     = "WWPN"
  description = "What type of Fiber-Channel Pool is this.  Options are {WWNN|WWPN}."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
