#____________________________________________________________
#
# SMTP Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enabled" {
  default     = true
  description = "If enabled, controls the state of the SMTP client service on the managed device."
  type        = bool
}

variable "min_severity" {
  default     = "critical"
  description = "Minimum fault severity level to receive email notifications. Email notifications are sent for all faults whose severity is equal to or greater than the chosen level.\r\n * critical - Minimum severity to report is critical.\r\n * condition - Minimum severity to report is informational.\r\n * warning - Minimum severity to report is warning.\r\n * minor - Minimum severity to report is minor.\r\n * major - Minimum severity to report is major."
  type        = string
}

variable "name" {
  default     = "smtp"
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

variable "sender_email" {
  default     = ""
  description = "The email address entered here will be displayed as the from address (mail received from address) of all the SMTP mail alerts that are received. If not configured, the hostname of the server is used in the from address field."
  type        = string
}

variable "smtp_port" {
  default     = 25
  description = "Port number used by the SMTP server for outgoing SMTP communication."
  type        = number
}

variable "smtp_recipients" {
  default     = []
  description = "List of Emails to send alerts to."
  type        = list(string)
}

variable "smtp_server" {
  description = "IP address or hostname of the SMTP server. The SMTP server is used by the managed device to send email notifications."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
