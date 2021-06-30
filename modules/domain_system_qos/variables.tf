#____________________________________________________________
#
# System QoS Policy Variables Section.
#____________________________________________________________

variable "classes" {
  default     = []
  description = "List of Classes (with Attributes) to Assign to the System QoS Policy."
  type        = list(map(string))
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "system_qos_policy"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = list(map(string))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
