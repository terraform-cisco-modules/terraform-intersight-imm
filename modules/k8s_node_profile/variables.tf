
#____________________________________________________________
#
# Intersight Kubernetes Service Cluster Node Profile Variables
#____________________________________________________________

variable "action" {
  type        = string
  description = "User initiated action. i.e 'Deploy' 'Unassign'"
  default     = "Unassign"
}

variable "description" {
  default     = ""
  description = "Description for the Profile."
  type        = string
}

variable "cluster_moid" {
  description = "A reference to a kubernetesClusterProfile resource."
  type        = string
}

variable "desired_size" {
  default     = ""
  description = "Desired number of nodes in this node group, same as minsize initially and is updated by the auto-scaler."
  type        = string
}

variable "ip_pool_moid" {
  description = "MOID derived from the IP Pool that is being consumed."
  type        = string
}

variable "max_size" {
  description = "Maximum number of nodes desired in this node group."
  type        = string
}

variable "name" {
  default     = "node_profile"
  description = "Name for the Policy."
  type        = string
}

variable "node_type" {
  default     = "Worker"
  description = "he node type ControlPlane, Worker or ControlPlaneWorker.\r\n * ControlPlane - Node will be marked as a control plane node.\r\n * ControlPlaneWorker - Node will be both a controle plane and a worker.\r\n * Worker - Node will be marked as a worker node."
  type        = string
}
variable "version_moid" {
  description = "MOID of the Version Policy to be assigned to the Node Profile."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}