#____________________________________________________________
#
# SSH Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enabled" {
  default     = true
  description = "State of SSH service on the endpoint."
  type        = bool
}

variable "name" {
  default     = "ssh"
  description = "Name for the Policy."
  type        = string
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

variable "ssh_port" {
  default     = 22
  description = "Port used for secure shell access."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "timeout" {
  default     = 1800
  description = "Number of seconds to wait before the system considers a SSH request to have timed out."
  type        = number
}
