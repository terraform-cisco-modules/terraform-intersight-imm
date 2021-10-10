#____________________________________________________________
#
# Kubernetes Virtual Machine Instance Type Policy Variables.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the infrastructure provider."
  type        = string
}

variable "kubernetes_node_pool_moid" {
  default     = ""
  description = "MOID of the Kubernetes Node Profile mapped to this provider."
  type        = string
}

variable "name" {
  default     = "k8s_vm_instance_type"
  description = "Name of an Kubernetes Virtual Machine Instance Type Policy mapped to this provider."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vm_infra_config_moid" {
  default     = ""
  description = "MOID of the Kubernetes Infra Config Policy mapped to this provider."
  type        = string
}

variable "vm_instance_type_moid" {
  default     = ""
  description = "MOID of the Kubernetes Instance type Policy mapped to this provider."
  type        = string
}
