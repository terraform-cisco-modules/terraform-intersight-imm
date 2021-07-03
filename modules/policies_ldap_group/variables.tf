#____________________________________________________________
#
# LDAP Group Variables Section.
#____________________________________________________________

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "ldap_policy_moid" {
  description = "A reference to a iamLdapPolicy resource."
  type        = string
}

variable "ldap_domain" {
  description = "LDAP server domain the Group resides in."
  type        = string
}

variable "ldap_group" {
  description = "LDAP Group name in the LDAP server database."
  type        = string
}

variable "group_role" {
  default     = "readonly"
  description = "The Role to Assign to the LDAP Group.  Valid Options are {admin|readonly|user}"
  type        = string
}
