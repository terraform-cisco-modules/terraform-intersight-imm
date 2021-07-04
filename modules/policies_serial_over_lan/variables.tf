#____________________________________________________________
#
# Serial over LAN Policy Variables Section.
#____________________________________________________________

variable "baud_rate" {
  default     = 9600
  description = "Baud Rate to Assign to the Policy.  Options are {9600|19200|38400|57600|115200}."
  type        = string
}

variable "com_port" {
  default     = "com0"
  description = "Communications Port to Assign to the Policy.  Options are {com0|com1}."
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
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "ssh_port" {
  default     = 2400
  description = "SSH Port to Assign to the Policy.  Options are between 1024-65535."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
