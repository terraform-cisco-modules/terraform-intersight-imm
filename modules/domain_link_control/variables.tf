#____________________________________________________________
#
# Link Control Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "link_control"
  description = "Name for the Policy."
  type        = string
}

variable "udld_admin_state" {
  default     = "Enabled"
  description = "Admin configured UDLD State for this port.\r\n * Disabled - Admin configured Disabled State.\r\n * Enabled - Admin configured Enabled State."
  type        = string
}

variable "udld_mode" {
  default     = "normal"
  description = "Admin configured UDLD Mode for this port.* normal - Admin configured 'normal' UDLD mode.* aggressive - Admin configured 'aggressive' UDLD mode."
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
