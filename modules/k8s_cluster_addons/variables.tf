#____________________________________________________________
#
# Kubernetes Cluster Addon Variables Section.
#____________________________________________________________

    moid = var.cluster_moid
variable "addons" {
  default     = []
  description = "The Addon to add to this Kubernetes Cluster.  Options are:\r\n * ccp-monitor\r\n * kubernetes-dashboard."
  type        = set(string)
}

variable "cluster_moid" {
  description = "A reference to a kubernetesCluster resource."
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

