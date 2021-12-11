#____________________________________________________________
#
# Certificate Management Policy Variables Section.
#____________________________________________________________

variable "base64_certificate" {
  description = "The Server Certificate in Base64 format."
  sensitive   = true
  type        = string
}

variable "base64_private_key" {
  description = "Private Key in Base64 Format."
  sensitive   = true
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enabled" {
  default     = true
  description = "Enable/Disable the Certificate Management policy."
  type        = bool
}

variable "name" {
  default     = "certificate"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "profiles" {
  default     = {}
  description = "Map of Profiles to Assign to the Policy."
  type = map(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
