#____________________________________________________________
#
# Fibre Channel Qos Policy Variables Section.
#____________________________________________________________

variable "burst" {
  default     = 1024
  description = "The burst traffic, in bytes, allowed on the vHBA.  Value can be between 1024-1000000."
  type        = number
}

variable "cos" {
  default     = 3
  description = "Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "max_data_field_size" {
  default     = 2112
  description = "The maximum size of the Fibre Channel frame payload bytes that the virtual interface supports."
  type        = number
}

variable "name" {
  default     = "vhba_qos"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "rate_limit" {
  default     = 0
  description = "The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.  Range is between 0-100000."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

