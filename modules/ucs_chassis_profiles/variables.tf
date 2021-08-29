#____________________________________________________________
#
# UCS Chassis Profile Variables Section.
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

variable "assigned_chassis" {
  default     = []
  description = "A reference to a equipmentChassis resource."
  type        = list(map(string))
}

variable "description" {
  default     = ""
  description = "Description for the Profile."
  type        = string
}

variable "name" {
  default     = "chassis_profile"
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

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "target_platform" {
  default     = "FIAttached"
  description = <<-EOT
  The platform for which the chassis profile is applicable. It can either be a chassis that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.
  * FIAttached - Chassis which are connected to a Fabric Interconnect that is managed by Intersight.
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

variable "wait_for_completion" {
  default     = false
  description = "This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state."
  type        = bool
}
