#____________________________________________________________
#
# SNMP Policy Variables Section.
#____________________________________________________________

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "enabled" {
  default     = true
  description = "State of the SNMP Policy on the endpoint. If enabled, the endpoint sends SNMP traps to the designated host."
  type        = bool
}

variable "name" {
  default     = "snmp"
  description = "Name for the Policy."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "profile_type" {
  default     = "server"
  description = <<-EOT
  Value to Identify the Type of Profile being applied to the policy.  Options are:
  * chassis
  * domain
  * server
  EOT
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "snmp_access" {
  default     = "Full"
  description = <<-EOT
  Controls access to the information in the inventory tables. Applicable only for SNMPv1 and SNMPv2c users.
  * Disabled - Blocks access to the information in the inventory tables.
  * Limited - Partial access to read the information in the inventory tables.
  * Full - Full access to read the information in the inventory tables.
  EOT
  type        = string
}

variable "snmp_community" {
  default     = ""
  description = "The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long."
  sensitive   = true
  type        = string
}

variable "snmp_engine_id" {
  default     = ""
  description = "Unique string to identify the device for administration purpose. This is generated from the SNMP Input Engine ID if it is already defined, else it is derived from the BMC serial number."
  type        = string
}

variable "snmp_port" {
  default     = 161
  description = "Port on which Cisco IMC SNMP agent runs. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269).  Default is 161."
  type        = number
}

variable "snmp_traps" {
  default     = []
  description = "List of SNMP Trap Destinations to Assign to the Policy."
  type        = list(map(string))
}

variable "system_contact" {
  default     = ""
  description = "Contact person responsible for the SNMP implementation. Enter a string up to 64 characters, such as an email address or a name and telephone number."
  type        = string
}

variable "system_location" {
  default     = ""
  description = "Location of host on which the SNMP agent (server) runs."
  type        = string
}

variable "trap_community" {
  default     = ""
  description = "SNMP community group used for sending SNMP trap to other devices. Valid only for SNMPv2c."
  sensitive   = true
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "v2_enabled" {
  default     = true
  description = "State of the SNMPv2c on the endpoint. If enabled, the endpoint sends SNMPv2c properties to the designated host."
  type        = bool
}

variable "v3_enabled" {
  default     = true
  description = "State of the SNMPv3 on the endpoint. If enabled, the endpoint sends SNMPv3 properties to the designated host."
  type        = bool
}

variable "user_1_auth_password" {
  default     = ""
  description = "Authorization password for the user."
  sensitive   = true
  type        = string
}

variable "user_1_auth_type" {
  default     = "SHA"
  description = <<-EOT
  Authorization protocol for authenticating the user.  Currently Options are:
  * MD5
  * SHA
  In the future these options will be added.
  * NA - Authentication protocol is not applicable.
  * SHA-224 - SHA-224 protocol is used to authenticate SNMP user.
  * SHA-256 - SHA-256 protocol is used to authenticate SNMP user.
  * SHA-384 - SHA-384 protocol is used to authenticate SNMP user.
  * SHA-512 - SHA-512 protocol is used to authenticate SNMP user.
  EOT
  type        = string
}

variable "user_1_name" {
  description = "Username. Must have a minimum of 1 and and a maximum of 31 characters."
  type        = string
}

variable "user_1_privacy_password" {
  default     = ""
  description = "Privacy password for the user."
  sensitive   = true
  type        = string
}

variable "user_1_security_level" {
  default     = "AuthPriv"
  description = <<-EOT
  Security mechanism used for communication between agent and manager.
  * AuthNoPriv - The user requires an authorization password but not a privacy password.
  * AuthPriv - The user requires both an authorization password and a privacy password.
  * NoAuthNoPriv - The user does not require an authorization or privacy password.
  EOT
  type        = string
}

variable "user_2_auth_password" {
  default     = ""
  description = "Authorization password for the user."
  sensitive   = true
  type        = string
}

variable "user_2_auth_type" {
  default     = "SHA"
  description = <<-EOT
  Authorization protocol for authenticating the user.  Currently Options are:
  * MD5
  * SHA
  In the future these options will be added.
  * NA - Authentication protocol is not applicable.
  * SHA-224 - SHA-224 protocol is used to authenticate SNMP user.
  * SHA-256 - SHA-256 protocol is used to authenticate SNMP user.
  * SHA-384 - SHA-384 protocol is used to authenticate SNMP user.
  * SHA-512 - SHA-512 protocol is used to authenticate SNMP user.
  EOT
  type        = string
}

variable "user_2_name" {
  description = "Username. Must have a minimum of 1 and and a maximum of 31 characters."
  type        = string
}

variable "user_2_privacy_password" {
  default     = ""
  description = "Privacy password for the user."
  sensitive   = true
  type        = string
}

variable "user_2_security_level" {
  default     = "AuthPriv"
  description = <<-EOT
  Security mechanism used for communication between agent and manager.
  * AuthNoPriv - The user requires an authorization password but not a privacy password.
  * AuthPriv - The user requires both an authorization password and a privacy password.
  * NoAuthNoPriv - The user does not require an authorization or privacy password.
  EOT
  type        = string
}

