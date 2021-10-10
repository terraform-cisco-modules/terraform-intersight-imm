#____________________________________________________________
#
# SSH Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_ssh" {
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

variable "ssh_port" {
  default     = 22
  description = "Port used for secure shell access.  Valid range is between 1-65535."
  type        = number
}

variable "ssh_timeout" {
  default     = 1800
  description = "Number of seconds to wait before the system considers a SSH request to have timed out.  Valid range is between 60-10800."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
