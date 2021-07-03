#____________________________________________________________
#
# Ethernet (vNIC) LAN Connectivity Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "iqn_allocation_type" {
  default     = "None"
  description = "Allocation Type of iSCSI Qualified Name.  Options are {None|Pool|Static}."
  type        = string
}

variable "iqn_pool" {
  default     = []
  description = "IQN Pool to Assign to the Policy."
  type        = list(map(string))
}

variable "iqn_static_name" {
  default     = ""
  description = "User provided static iSCSI Qualified Name (IQN) for use as initiator identifiers by iSCSI vNICs."
  type        = string
}

variable "name" {
  default     = "lan_connectivity"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "placement_mode" {
  default     = "custom"
  description = "The mode used for placement of vNICs on network adapters. It can either be auto or custom."
  type        = string
}

variable "target_platform" {
  default     = "FIAttached"
  description = "The platform for which the server profile is applicable. It can either be a server that is operating in 'Standalone' mode or which is attached to a Fabric Interconnect 'FIAttached' managed by Intersight."
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = list(map(string))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
