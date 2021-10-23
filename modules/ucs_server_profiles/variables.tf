#____________________________________________________________
#
# UCS Server Profile Variables Section.
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

variable "assigned_server" {
  default     = []
  description = "A reference to a computePhysical resource."
  type        = list(map(string))
}

variable "description" {
  default     = ""
  description = "Description to Assign to the Profile."
  type        = string
}

variable "name" {
  default     = "server_profile"
  description = "Name for the Profile."
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

variable "src_template" {
  default     = []
  description = "A reference to a policyAbstractProfile resource.."
  type        = set(string)
}

variable "static_uuid_address" {
  default     = ""
  description = "The UUID address for the server must include UUID prefix xxxxxxxx-xxxx-xxxx along with the UUID suffix of format xxxx-xxxxxxxxxxxx."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
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

variable "type" {
  default     = "instance"
  description = <<-EOT
  Defines the type of the profile. Accepted values are:
    * instance
    * template
  EOT
  type        = string
}

variable "uuid_address_type" {
  default     = "NONE"
  description = <<-EOT
  UUID address allocation type selected to assign an UUID address for the server.
  * NONE - The user did not assign any UUID address.
  * STATIC - The user assigns a static UUID address.
  * POOL - The user selects a pool from which the address will be leased.
  EOT
  type        = string
}

variable "uuid_pool" {
  default     = ""
  description = "A reference to a uuidpoolPool resource."
  type        = string
}
variable "wait_for_completion" {
  default     = false
  description = "This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state."
  type        = bool
}
