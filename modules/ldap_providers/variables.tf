#____________________________________________________________
#
# LDAP Provider Variables Section.
#____________________________________________________________

variable "ldap_policy_moid" {
  description = "A reference to a iamLdapPolicy resource."
  type        = string
}

variable "ldap_port" {
  default     = 389
  description = "LDAP Server Port for connection establishment."
  type        = number
}

variable "ldap_server" {
  description = "LDAP Server Address, can be IP address or hostname."
  type        = string
}
