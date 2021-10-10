#____________________________________________________________
#
# Kubernetes Virtual Machine Instance Type Policy Variables.
#____________________________________________________________

variable "cpu" {
  default     = 4
  description = "umber of CPUs allocated to virtual machine.  Range is 1-40."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the infrastructure provider."
  type        = string
}

variable "system_disk_size" {
  default     = 40
  description = "Ephemeral disk capacity to be provided with units example - 10 for 10 Gigabytes."
  type        = number
}

variable "memory" {
  default     = 16384
  description = "Virtual machine memory defined in mebibytes (MiB).  Range is 1-4177920."
  type        = number
}

variable "name" {
  default     = "k8s_vm_instance_type"
  description = "Name of an Kubernetes Virtual Machine Instance Type Policy mapped to this provider."
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

