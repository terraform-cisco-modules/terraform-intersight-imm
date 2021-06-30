#____________________________________________________________
#
# Device Connector Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "device_connector"
  description = "Name for the Policy."
  type        = string
}

variable "lockout" {
  default     = false
  description = "Enables configuration lockout on the endpoint."
  type        = bool
}

variable "org_moid" {
  description = "Intersight Organization moid."
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
