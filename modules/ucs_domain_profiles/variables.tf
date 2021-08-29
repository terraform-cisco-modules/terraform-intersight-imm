#____________________________________________________________
#
# UCS Domain Cluster Profile Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "domain_profiles" {
  default     = []
  description = "An array of relationships to fabricSwitchProfile resources."
  type        = list(map(string))
}

variable "domain_src_template" {
  default     = []
  description = "A reference to a policyAbstractProfile resource."
  type        = list(map(string))
}

variable "domain_type" {
  default     = "instance"
  description = "Defines the type of the profile. Accepted values are instance or template."
  type        = string
}

variable "name" {
  default     = "domain_profile"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
