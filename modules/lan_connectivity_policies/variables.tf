#____________________________________________________________
#
# Ethernet (vNIC) LAN Connectivity Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_azure_stack_host_qos" {
  default     = false
  description = "Enabling AzureStack-Host QoS on an adapter allows the user to carve out traffic classes for RDMA traffic which ensures that a desired portion of the bandwidth is allocated to it."
  type        = bool
}

variable "iqn_allocation_type" {
  default     = "None"
  description = <<-EOT
  Allocation Type of iSCSI Qualified Name.  Options are:
  * None
  * Pool
  * Static
  EOT
  type        = string
}

variable "iqn_pool" {
  default     = []
  description = "IQN Pool to Assign to the Policy."
  type        = set(string)
}

variable "iqn_static_identifier" {
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

variable "target_platform" {
  default     = "FIAttached"
  description = <<-EOT
  The platform for which the server profile is applicable. It can either be:
  * Standalone - a server that is operating independently
  * FIAttached - A Server attached to a Intersight Managed Domain.
  EOT
  type        = string
}

variable "profiles" {
  default     = {}
  description = <<-EOT
  Map of Profiles to Assign to the Policy.
  * moid - Managed Object Identifier for the Managed Resource.
  * object_type - Object Type to Assign in the Profile Configuration.
    - server.Profile - For UCS Server Profiles.
    - server.ProfileTemplate - For UCS Server Profile Templates.
  EOT
  type = map(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "vnic_placement_mode" {
  default     = "custom"
  description = "The mode used for placement of vNICs on network adapters. It can either be auto or custom."
  type        = string
}
