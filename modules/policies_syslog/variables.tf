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

variable "profile_type" {
  default     = "server"
  description = "Value to Identify the Type of Profile being applied to the policy.  Options are {domain|server}"
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "remote_clients" {
  default     = []
  description = "Configure up to 2 remote syslog servers."
  type        = list(map(string))
}

variable "syslog_severity" {
  default = "warning"
  description = "Lowest level of messages to be included in the local log.\r\n * warning - Use logging level warning for logs classified as warning.\r\n * emergency - Use logging level emergency for logs classified as emergency.\r\n * alert - Use logging level alert for logs classified as alert.\r\n * critical - Use logging level critical for logs classified as critical.\r\n * error - Use logging level error for logs classified as error.\r\n * notice - Use logging level notice for logs classified as notice.\r\n * informational - Use logging level informational for logs classified as informational.\r\n * debug - Use logging level debug for logs classified as debug."
  type = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
