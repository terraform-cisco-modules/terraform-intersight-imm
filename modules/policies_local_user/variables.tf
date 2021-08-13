#____________________________________________________________
#
# Local User Variables Section.
#____________________________________________________________

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "user_enabled" {
  default     = true
  description = "Enables the user account on the endpoint."
  type        = bool
}

variable "user_password" {
  description = "Valid login password of the user."
  sensitive   = true
  type        = string
}

variable "user_policy_moid" {
  description = "A reference to a iamEndPointUserPolicy resource."
  type        = string
}

variable "user_role" {
  default     = "readonly"
  description = <<-EOT
  The Role to Assign to the User.  Valid Options are:
  * admin
  * readonly
  * user
  EOT
  type        = string
}

variable "username" {
  description = "Name of the user to be created on the endpoint. It can be any string that adheres to the following constraints. It can have alphanumeric characters, dots, underscores and hyphen. It cannot be more than 16 characters."
  type        = string
}
