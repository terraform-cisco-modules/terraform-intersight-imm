#____________________________________________________________
#
# iSCSI Adapter Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "dhcp_timeout" {
  default     = 60
  description = "The number of seconds to wait before the initiator assumes that the DHCP server is unavailable.  Range is 60-300."
  type        = number
}

variable "lun_busy_retry_count" {
  default     = 15
  description = "The number of times to retry the connection in case of a failure during iSCSI LUN discovery.  Range is 0-60."
  type        = number
}

variable "name" {
  default     = "vnic_iscsi_adapter"
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

variable "tcp_connection_timeout" {
  default     = 15
  description = "The number of seconds to wait until Cisco UCS assumes that the initial login has failed and the iSCSI adapter is unavailable.  Range is 0-255."
  type        = number
}
