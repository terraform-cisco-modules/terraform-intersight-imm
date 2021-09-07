#____________________________________________________________
#
# Ethernet iSCSI Boot Policy Variables Section.
#____________________________________________________________

variable "chap_password" {
  default     = ""
  description = "Chap Password, if doing chap authentication."
  sensitive   = true
  type        = string
}

variable "chap_user_id" {
  default     = ""
  description = "Chap User Id, if doing chap authentication."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "dhcp_vendor_id_iqn" {
  default     = ""
  description = "Auto target interface that is represented via the Initiator name or the DHCP vendor ID. The vendor ID can be up to 32 alphanumeric characters."
  type        = string
}

variable "initiator_ip_pool" {
  default     = []
  description = "A reference to a ippoolPool resource."
  type        = set(string)
}

variable "initiator_ip_source" {
  default     = "Pool"
  description = <<-EOT
  Source Type of Initiator IP Address - DHCP/Static/Pool.
  * DHCP - The IP address is assigned using DHCP, if available.
  * Static - Static IPv4 address is assigned to the iSCSI boot interface based on the information entered in this area.
  * Pool - An IPv4 address is assigned to the iSCSI boot interface from the management IP address pool.
  EOT
  type        = string
}

variable "initiator_static_default_gateway" {
  default     = ""
  description = "IP address of the default IPv4 gateway."
  type        = string
}

variable "initiator_static_ip_address" {
  default     = ""
  description = "Static IP address provided for iSCSI Initiator."
  type        = string
}

variable "initiator_static_primary_dns" {
  default     = ""
  description = "IP Address of the primary Domain Name System (DNS) server."
  type        = string
}

variable "initiator_static_secondary_dns" {
  default     = ""
  description = "IP Address of the secondary Domain Name System (DNS) server."
  type        = string
}

variable "initiator_static_subnet_mask" {
  default     = ""
  description = "A subnet mask is a 32-bit number that masks an IP address and divides the IP address into network address and host address."
  type        = string
}

variable "iscsi_adapter_policy_moid" {
  default     = []
  description = "A reference to a vnicIscsiAdapterPolicy resource."
  type        = set(string)
}

variable "mschap_password" {
  default     = ""
  description = "Mutual Chap Password, if doing mschap authentication."
  sensitive   = true
  type        = string
}

variable "mschap_user_id" {
  default     = ""
  description = "Mutual Chap User Id, if doing mschap authentication."
  type        = string
}

variable "name" {
  default     = "vnic_iscsi_boot"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "primary_target_policy_moid" {
  default     = []
  description = "A reference to a vnicIscsiStaticTargetPolicy resource."
  type        = set(string)
}

variable "secondary_target_policy_moid" {
  default     = []
  description = "A reference to a vnicIscsiStaticTargetPolicy resource."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "target_source_type" {
  default     = "Auto"
  description = <<-EOT
  Source Type of Targets - Auto/Static.
  * Auto - Type indicates that the system selects the target interface automatically during iSCSI boot.
  * Static - Type indicates that static target interface is assigned to iSCSI boot.
  EOT
  type        = string
}
