#__________________________________________________________
#
# Intersight Provider Variables
#__________________________________________________________

variable "apikey" {
  description = "Intersight API Key."
  sensitive   = true
  type        = string
}

variable "endpoint" {
  default     = "https://intersight.com"
  description = "Intersight URL."
  sensitive   = false
  type        = string
}

variable "secretkey" {
  description = "Intersight Secret Key."
  sensitive   = true
  type        = string
}


#__________________________________________________________
#
# Intersight Organization
#__________________________________________________________

variable "organization" {
  default     = "default"
  description = "Intersight Organization."
  type        = string
}


#__________________________________________________________
#
# Variables Shared between all the Pools
#__________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = "Assignment order decides the order in which the next identifier is allocated.\r\n * sequential - Identifiers are assigned in a sequential order.\r\n* default - Assignment order is decided by the system."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Key/Value Pairs to Assign as Attributes to the Policy."
  type        = list(map(string))
}


#__________________________________________________________
#
# IP Pool Variables
#__________________________________________________________

variable "dns_servers_v4" {
  default     = []
  description = "List of DNS Servers for this Pool."
  type        = list(string)
}

variable "dns_servers_v6" {
  default     = []
  description = "List of DNS Servers for this Pool."
  type        = list(string)
}

variable "ipv4_block" {
  default     = []
  description = "List of IPv4 Addresses to Assign to the IP Pool."
  type        = list(map(string))
}

variable "ipv4_config" {
  default     = []
  description = "List of IPv4 Configuration Parameters to Assign to the IP Pool."
  type        = list(map(string))
}

variable "ipv6_block" {
  default     = []
  description = "List of IPv6 Addresses to Assign to the IP Pool."
  type        = list(map(string))
}

variable "ipv6_config" {
  default     = []
  description = "List of IPv6 Configuration Parameters to Assign to the IP Pool."
  type        = list(map(string))
}

#____________________________________________________________
#
# IQN Pool Variables Section.
#____________________________________________________________

variable "iqn_prefix" {
  default     = ""
  description = "The prefix for IQN blocks created for this pool."
  type        = string
}

variable "iqn_suffix_blocks" {
  default     = []
  description = "List of IQN Pool Parameters to Assign to the IQN Pool.\r\n * from: Starting IQN Address.\r\n * size: Size of the IQN Pool.\r\n * suffix: Suffix to assign to the IQN Pool."
  type        = list(map(string))
}


#__________________________________________________________
#
# MAC Pool Variables
#__________________________________________________________


variable "mac_blocks" {
  default     = []
  description = "List of MAC Address Configuration Parameters to Assign to the MAC Pool."
  type        = list(map(string))
}


#__________________________________________________________
#
# UUID Pool Variables
#__________________________________________________________

variable "uuid_suffix_blocks" {
  default     = []
  description = "List of UUID's Suffix Parameters to Assign to the UUID Pool."
  type        = list(map(string))
}

variable "uuid_prefix" {
  default     = "123e4567-e89b-42d3"
  description = "Prefix to assign to the UUID Pool."
  type        = string
}


#__________________________________________________________
#
# WWPN Pool Variables
#__________________________________________________________

variable "id_blocks" {
  default     = []
  description = "List of WWxN's Configuration Parameters to Assign to the Fiber-Channel Pool."
  type        = list(map(string))
}
