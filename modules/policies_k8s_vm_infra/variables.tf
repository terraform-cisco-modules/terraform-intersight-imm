#____________________________________________________________
#
# Kubernetes Addon Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
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

variable "vsphere_cluster" {
  description = "Name of the cluster you wish to make part of this provider within vCenter."
  type        = string
}

variable "vsphere_datastore" {
  description = "Name of the datastore to be used with this provider."
  type        = string
}

variable "vsphere_password" {
  description = "Password of the account to be used with vCenter.  This should be the password for the account used to register vCenter with Intersight."
  sensitive   = true
  type        = string
}

variable "vsphere_portgroup" {
  description = "Name of the portgroup(s) to be used in this provider"
  type        = list(string)
}

variable "vsphere_resource_pool" {
  default     = ""
  description = "Name of the resource pool to be used with this provider."
  type        = string
}

variable "vsphere_target" {
  description = "Name of the vSphere Target to assign to the Policy."
  type        = string
}
