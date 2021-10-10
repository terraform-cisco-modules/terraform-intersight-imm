#____________________________________________________________
#
# Kubernetes Cluster - Add-ons Variables Section.
#____________________________________________________________

variable "addons" {
  default     = []
  description = "The Addon Policy Managed Object ID's to add to the Kubernetes Cluster."
  type        = list(map(string))
}

variable "kubernetes_cluster_moid" {
  description = "A reference to a kubernetes Cluster resource moid."
  type        = string
}

variable "name" {
  default     = "k8s_addon"
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
