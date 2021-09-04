#____________________________________________________________
#
# KVM Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_local_server_video" {
  default     = true
  description = "If enabled, displays KVM session on any monitor attached to the server."
  type        = bool
}

variable "enable_video_encryption" {
  default     = true
  description = "If enabled, encrypts all video information sent through KVM."
  type        = bool
}

variable "enable_virtual_kvm" {
  default     = true
  description = "Flag to Enable or Disable the Policy."
  type        = bool
}

variable "maximum_sessions" {
  default     = 4
  description = "The maximum number of concurrent KVM sessions allowed. Range is 1 to 4."
  type        = number
}

variable "name" {
  default     = "kvm"
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

variable "remote_port" {
  default     = 2068
  description = "The port used for KVM communication. Range is 1 to 65535."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
