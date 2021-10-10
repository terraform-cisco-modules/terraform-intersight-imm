terraform {
  experiments = [module_variable_optional_attrs]
}

#____________________________________________________________
#
# LDAP Policy Variables Section.
#____________________________________________________________

variable "base_settings" {
  default = {
    base_dn = ""
    domain  = ""
    timeout = 0
  }
  description = <<-EOT
  * base_dn - Base Distinguished Name (DN). Starting point from where server will search for users and groups.
  * domain - The LDAP Base domain that all users must be in.
  * timeout - LDAP authentication timeout duration, in seconds.  Range is 0 to 180.
  EOT
  type = object(
    {
      base_dn = string
      domain  = string
      timeout = optional(number)
    }
  )
}

variable "binding_parameters" {
  default = {
    bind_dn        = ""
    binding_method = "LoginCredentials"
  }
  description = <<-EOT
  * bind_dn - Distinguished Name (DN) of the user, that is used to authenticate against LDAP servers.
  * bind_method - Authentication method to access LDAP servers.
    - Anonymous - Requires no username and password. If this option is selected and the LDAP server is configured for Anonymous logins, then the user gains access.
    - ConfiguredCredentials - Requires a known set of credentials to be specified for the initial bind process. If the initial bind process succeeds, then the distinguished name (DN) of the user name is queried and re-used for the re-binding process. If the re-binding process fails, then the user is denied access.
    - LoginCredentials - Requires the user credentials. If the bind process fails, then user is denied access.
  EOT
  type = object(
    {
      bind_dn     = optional(string)
      bind_method = optional(string)
    }
  )
}

variable "binding_parameters_password" {
  default     = ""
  description = "The password of the user for initial bind process. It can be any string that adheres to the following constraints. It can have character except spaces, tabs, line breaks. It cannot be more than 254 characters."
  sensitive   = true
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
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

variable "enable_ldap" {
  default     = true
  description = "Flag to Enable or Disable the Policy."
  type        = bool
}

variable "ldap_from_dns" {
  default = {
    enable        = false
    search_domain = ""
    search_forest = ""
    source        = "Extracted"
  }
  description = <<-EOT
  This Array enabled the use of DNS for LDAP Server discovery.
  * enable - Enables DNS to access LDAP servers.
  * search_domain - Domain name that acts as a source for a DNS query.
  * search_forest - Forest name that acts as a source for a DNS query.
  * source - Source of the domain name used for the DNS SRV request.
    - Configured - The configured-search domain.
    - ConfiguredExtracted - The domain name extracted from the login ID than the configured-search domain.
    - Extracted - The domain name extracted-domain from the login ID."
  EOT
  type = object(
    {
      enable        = optional(bool)
      search_domain = optional(string)
      search_forest = optional(string)
      source        = optional(string)
    }
  )
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

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "profiles" {
  default     = {}
  description = <<-EOT
  Map of Profiles to Assign to the Policy.
  * moid - Managed Object Identifier for the Managed Resource.
  * object_type - Object Type to Assign in the Profile Configuration.
    - server.Profile - For UCS Server Profiles.
    - server.ProfileTemplate - For UCS Server Profile Templates.
  EOT
  type = map(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "search_parameters" {
  default = {
    attribute       = "CiscoAvPair"
    filter          = "samAccountName"
    group_attribute = "memberOf"
  }
  description = <<-EOT
  attribute - Role and locale information of the user.
  filter - Criteria to identify entries in search requests.
  group_attribute - Groups to which an LDAP user belongs.
  EOT
  type = object(
    {
      attribute       = optional(string)
      filter          = optional(string)
      group_attribute = optional(string)
    }
  )
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "user_search_precedence" {
  default     = "LocalUserDb"
  description = <<-EOT
  Search precedence between local user database and LDAP user database.
  * LocalUserDb - Precedence is given to local user database while searching.
  * LDAPUserDb - Precedence is given to LADP user database while searching.
  EOT
  type        = string
}
