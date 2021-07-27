#____________________________________________________________
#
# Kubernetes Version Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description of the policy."
  type        = string
}

variable "k8s_version" {
  default     = "1.19.5"
  description = "A reference to a kubernetesVersion resource."
  type        = string
}

variable "name" {
  default     = "k8s_version"
  description = "Name of the concrete policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}

