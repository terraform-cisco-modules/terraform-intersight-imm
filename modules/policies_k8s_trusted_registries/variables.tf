#____________________________________________________________
#
# Kubernetes Addon Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description of the policy."
  type        = string
}

variable "name" {
  default     = "k8s_registry"
  description = "Name of the concrete policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "root_ca_registries" {
  default     = []
  description = "List of root CA certificates to assign to the policy."
  type        = list(string)
}

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "unsigned_registries" {
  default     = []
  description = "List of unsigned registries to assign to the policy."
  type        = list(string)
}
