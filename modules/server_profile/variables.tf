#____________________________________________________________
#
# UCS Server Profile Variables Section.
#____________________________________________________________

variable "action" {
  default     = "No-op"
  description = "Action to Perform on the Switch Profile Assignment.  Options are {Deploy|No-op|Unassign}."
  type        = string
}

variable "assigned_server" {
  default     = []
  description = "A reference to a computePhysical resource."
  type        = list(map(string))
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "server_profile"
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

variable "src_template" {
  default     = []
  description = "A reference to a computePhysical resource."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "target_platform" {
  default     = "FIAttached"
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in standalone mode or which is attached to a Fabric Interconnect managed by Intersight.\r\n * FIAttached - Servers which are connected to a Fabric Interconnect that is managed by Intersight.\r\n * Standalone - Servers which are operating in standalone mode i.e. not connected to a Fabric Interconnected."
  type        = string
}

variable "type" {
  default     = "instance"
  description = "Defines the type of the profile. Accepted values are 'instance' or 'template'."
  type        = string
}

variable "wait_for_completion" {
  default     = false
  description = "This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state."
  type        = bool
}
