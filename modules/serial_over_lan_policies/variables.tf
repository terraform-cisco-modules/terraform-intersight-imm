#____________________________________________________________
#
# Serial over LAN Policy Variables Section.
#____________________________________________________________

variable "baud_rate" {
  default     = 9600
  description = <<-EOT
  Baud Rate to Assign to the Policy.  Options are:
  * 9600
  * 19200
  * 38400
  * 57600
  * 115200
  EOT
  type        = string
}

variable "com_port" {
  default     = "com0"
  description = <<-EOT
  Communications Port to Assign to the Policy.  Options are:
  * com0
  * com1
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enabled" {
  default     = true
  description = "Flag to Enable or Disable the Policy."
  type        = bool
}

variable "name" {
  default     = "sol"
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
  default     = 2400
  description = "SSH Port to Assign to the Policy.  Range is between 1024-65535."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
