#____________________________________________________________
#
# Syslog Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "syslog"
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
    - fabric.SwitchProfile - For UCS Domain Switch Profiles.
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

variable "remote_clients" {
  default     = []
  description = "Configure up to 2 remote syslog servers."
  type        = list(map(string))
}

variable "local_min_severity" {
  default     = "warning"
  description = <<-EOT
  Lowest level of messages to be included in the local log.
  * warning - Use logging level warning for logs classified as warning.
  * emergency - Use logging level emergency for logs classified as emergency.
  * alert - Use logging level alert for logs classified as alert.
  * critical - Use logging level critical for logs classified as critical.
  * error - Use logging level error for logs classified as error.
  * notice - Use logging level notice for logs classified as notice.
  * informational - Use logging level informational for logs classified as informational.
  * debug - Use logging level debug for logs classified as debug.
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
