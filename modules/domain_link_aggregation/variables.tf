#____________________________________________________________
#
# Link Aggregation Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "lacp_rate" {
  default     = "fast"
  description = "Flag used to indicate whether LACP PDUs are to be sent 'fast', i.e., every 1 second.\r\n * normal - The normal timeout rate is 30 seconds.\r\n * fast - The fast timeout rate is 1 second."
  type        = string
}

variable "name" {
  default     = "link_aggregation"
  description = "Name for the Policy."
  type        = string
}

variable "suspend_individual" {
  default     = false
  description = "Flag tells the switch whether to suspend the port if it didn’t receive LACP PDU."
  type        = bool
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
