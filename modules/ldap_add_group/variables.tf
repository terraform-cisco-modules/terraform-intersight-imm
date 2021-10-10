#____________________________________________________________
#
# LDAP Group Variables Section.
#____________________________________________________________

variable "ldap_policy_moid" {
  description = "A reference to a iamLdapPolicy resource."
  type        = string
}

variable "domain" {
  default     = "example.com"
  description = "LDAP server domain the Group resides in."
  type        = string
}

variable "name" {
  description = "LDAP Group name in the LDAP server database."
  type        = string
}

variable "role" {
  default     = "readonly"
  description = <<-EOT
  The Role to Assign to the LDAP Group.  Valid Options are:
  * admin
  * readonly
  * user
  EOT
  type        = string
}
