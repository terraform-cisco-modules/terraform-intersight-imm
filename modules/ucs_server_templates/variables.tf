#____________________________________________________________
#
# UCS Server Profile Template Variables Section.
#____________________________________________________________

variable "action" {
  default     = "No-op"
  description = <<-EOT
  Action to Perform on the Chassis Profile Assignment.  Options are:
    * Deploy
    * No-op
    * Unassign
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "server_template"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "policy_bucket" {
  default     = []
  description = "List of Policies to Assign to the Profile."
  type        = list(map(string))
}

variable "target_platform" {
  default     = "FIAttached"
  description = <<-EOT
  The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.
    * FIAttached - Servers which are connected to a Fabric Interconnect that is managed by Intersight.
    * Standalone - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected.
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "uuid_pool" {
  default     = ""
  description = "A reference to a uuidpoolPool resource."
  type        = string
}
