#____________________________________________________________
#
# Certificate Management Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "pem_certificate" {
  description = "The base64 encoded certificate in PEM format."
  sensitive   = true
  type        = string
}

variable "enabled" {
  default     = true
  description = "Enable/Disable the certificate in Certificate Management policy."
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

variable "private_key" {
  description = "Private Key which is used to validate the certificate."
  sensitive   = true
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
