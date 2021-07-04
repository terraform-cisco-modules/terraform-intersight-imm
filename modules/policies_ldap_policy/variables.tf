#____________________________________________________________
#
# LDAP Policy Variables Section.
#____________________________________________________________

variable "attribute" {
  default     = "CiscoAvPair"
  description = "Role and locale information of the user."
  type        = string
}

variable "base_dn" {
  default     = "dc=example,dc=com"
  description = "Base Distinguished Name (DN). Starting point from where server will search for users and groups."
  type        = string
}

variable "bind_dn" {
  default     = ""
  description = "Distinguished Name (DN) of the user, that is used to authenticate against LDAP servers."
  type        = string
}

variable "bind_method" {
  default     = "LoginCredentials"
  description = "Authentication method to access LDAP servers.\r\n * Anonymous - Requires no username and password. If this option is selected and the LDAP server is configured for Anonymous logins, then the user gains access.\r\n * ConfiguredCredentials - Requires a known set of credentials to be specified for the initial bind process. If the initial bind process succeeds, then the distinguished name (DN) of the user name is queried and re-used for the re-binding process. If the re-binding process fails, then the user is denied access.\r\n * LoginCredentials - Requires the user credentials. If the bind process fails, then user is denied access."
  type        = string
}

variable "domain" {
  default     = "example.com"
  description = "The LDAP Base domain that all users must be in."
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enable_dns" {
  default     = false
  description = "Enables DNS to access LDAP servers."
  type        = bool
}

variable "enable_encryption" {
  default     = false
  description = "If enabled, the endpoint encrypts all information it sends to the LDAP server."
  type        = bool
}

variable "enable_group_authorization" {
  default     = false
  description = "If enabled, user authorization is also done at the group level for LDAP users not in the local user database."
  type        = bool
}

variable "enabled" {
  default     = true
  description = "Flag to Enable or Disable the Policy."
  type        = bool
}

variable "filter" {
  default     = "samAccountName"
  description = "Criteria to identify entries in search requests."
  type        = string
}

variable "group_attribute" {
  default     = "memberOf"
  description = "Groups to which an LDAP user belongs."
  type        = string
}

variable "name" {
  default     = "ldap_policy"
  description = "Name for the Policy."
  type        = string
}

variable "nested_group_search_depth" {
  default     = 128
  description = "Search depth to look for a nested LDAP group in an LDAP group map.  Range is 1 to 128."
  type        = number
}

variable "nr_source" {
  default     = "Extracted"
  description = "Source of the domain name used for the DNS SRV request.\r\n * Configured - The configured-search domain.\r\n * ConfiguredExtracted - The domain name extracted from the login ID than the configured-search domain.\r\n * Extracted - The domain name extracted-domain from the login ID."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "password" {
  default     = ""
  description = "The password of the user for initial bind process. It can be any string that adheres to the following constraints. It can have character except spaces, tabs, line breaks. It cannot be more than 254 characters."
  sensitive   = true
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "search_domain" {
  default     = ""
  description = "Domain name that acts as a source for a DNS query."
  type        = string
}

variable "search_forest" {
  default     = ""
  description = "Forest name that acts as a source for a DNS query."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "timeout" {
  default     = 0
  description = "LDAP authentication timeout duration, in seconds.  Range is 0 to 180."
  type        = number
}

variable "user_search_precedence" {
  default     = "LocalUserDb"
  description = "Search precedence between local user database and LDAP user database.\r\n * LocalUserDb - Precedence is given to local user database while searching.\r\n * LDAPUserDb - Precedence is given to LADP user database while searching."
  type        = string
}
