#____________________________________________________________
#
# Kubernetes Network CIDR Policy Variables
#____________________________________________________________

variable "cni_type" {
  default     = "Calico"
  description = <<-EOT
  Supported CNI type. Currently we only support Calico.
  * Calico - Calico CNI plugin as described in https://github.com/projectcalico/cni-plugin.
  * Aci - Cisco ACI Container Network Interface plugin.
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "k8s_network_cidr"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "pod_network_cidr" {
  default     = "100.64.0.0/16"
  description = "CIDR block to allocate pod network IP addresses from."
  type        = string
}

variable "service_cidr" {
  default     = "100.65.0.0/16"
  description = "CIDR block to allocate cluster service IP addresses from."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}

