#____________________________________________________________
#
# UCS Domain Profile - Switch Profile Variables Section.
#____________________________________________________________

variable "action" {
  default     = "No-op"
  description = "Action to Perform on the Switch Profile Assignment.  Options are {Deploy|No-op|Unassign}."
  type        = string
}

variable "assigned_switch" {
  default     = []
  description = "A reference to a networkElement resource."
  type        = set(string)
}

variable "cluster_moid" {
  description = "List of UCS Domain Cluster Profiles to Assign to the Switch Profile."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "domain_profile_switch"
  description = "Name for the Policy."
  type        = string
}

variable "policy_bucket" {
  default     = []
  description = "List of Policies to Assign to the Profile."
  type        = list(map(string))
}

variable "switch_type" {
  default     = "instance"
  description = "Defines the type of the profile. Accepted values are instance or template."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
