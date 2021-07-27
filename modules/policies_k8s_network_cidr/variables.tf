#____________________________________________________________
#
# Kubernetes Network CIDR Policy Variables
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "cidr_pod" {
  default     = "100.64.0.0/16"
  description = "CIDR block to allocate pod network IP addresses from."
  type        = string
}

variable "cidr_service" {
  default     = "100.65.0.0/16"
  description = "CIDR block to allocate cluster service IP addresses from."
  type        = string
}

variable "cni_type" {
  default     = "Calico"
  description = "Supported CNI type. Currently we only support Calico.\r\n* Calico - Calico CNI plugin as described in https://github.com/projectcalico/cni-plugin.\r\n* Aci - Cisco ACI Container Network Interface plugin."
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

variable "tags" {
  default     = []
  description = "List of key/value pair Attributes to Assign to the Policy."
  type        = list(map(string))
}
