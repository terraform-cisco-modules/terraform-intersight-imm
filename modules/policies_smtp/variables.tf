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
  description = <<-EOT
  Minimum fault severity level to receive email notifications. Email notifications are sent for all faults whose severity is equal to or greater than the chosen level.
    * critical - Minimum severity to report is critical.
    * condition - Minimum severity to report is informational.
    * warning - Minimum severity to report is warning.
    * minor - Minimum severity to report is minor.
    * major - Minimum severity to report is major.
  EOT
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
  type        = set(string)
}

variable "sender_email" {
  default     = ""
  description = "The email address entered here will be displayed as the from address (mail received from address) of all the SMTP mail alerts that are received. If not configured, the hostname of the server is used in the from address field."
  type        = string
}

variable "smtp_port" {
  default     = 25
  description = "Port number used by the SMTP server for outgoing SMTP communication.  Valid range is between 1-65535."
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
