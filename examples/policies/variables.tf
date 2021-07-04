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


#____________________________________________________________
#
# Policies Shared Variables.
#____________________________________________________________

variable "dns_servers_v4" {
  default     = []
  description = "List of IPv4 DNS Servers for this Pool."
  type        = list(string)
}

variable "dns_servers_v6" {
  default     = []
  description = "List of IPv6 DNS Servers for this Pool."
  type        = list(string)
}

variable "ipv4_enable" {
  default     = true
  description = "Flag to Enable or Disable the IPv4 Address Family for Poliices."
  type        = bool
}

variable "ipv6_enable" {
  default     = false
  description = "Flag to Enable or Disable the IPv6 Address Family for Poliices."
  type        = bool
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = set(string)
}

variable "tags" {
  default     = []
  description = "List of Key/Value Pairs to Assign as Attributes to the Policy."
  type        = list(map(string))
}


#____________________________________________________________
#
# Disk Group Policy Variables Section.
#____________________________________________________________

variable "hot_spares" {
  default     = []
  description = "Range of Disks to Add as Hot Spares.  Note in this example this would add 3 and 4.  Always Add one above your value."
  type        = list(number)
}

variable "raid_level" {
  default     = "RAID1"
  description = "The supported RAID level for the disk group.  Options are {RAID{0|1|5|6|10|50|60}}"
  type        = string
}

variable "span_groups" {
  default = {
    span_0 = [
      {
        disk = 1
      },
      {
        disk = 2
      }
    ]
  }
  description = "Using the Default Range would add disks 1 and 2 to a span_group."
}

variable "use_jbods" {
  default     = true
  description = "Selected disks in the disk group in JBOD state will be set to Unconfigured Good state before they are used in virtual drive creation."
  type        = bool
}


#____________________________________________________________
#
# IMC Access Policy Variables Section.
#____________________________________________________________

variable "inband_mgmt_vlan" {
  default     = 1
  description = "VLAN ID to Assign as the Inband Management VLAN for IMC Access"
  type        = number
}

variable "imc_ip_pool" {
  default     = ""
  description = "moid of an IP Pool to Assign to the IMC Access Policy."
  type        = string
}


#____________________________________________________________
#
# Network Connectivity (DNS) Policy Variables Section.
#____________________________________________________________

variable "dynamic_dns" {
  default     = false
  description = "Flag to Enable or Disable Dynamic DNS on the Policy."
  type        = bool
}

variable "update_domain" {
  default     = ""
  description = "Name of the Domain to Update when using Dynamic DNS for the Policy."
  type        = string
}


#__________________________________________________________
#
# NTP Policy Variables
#__________________________________________________________

variable "authenticated_ntp_servers" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "ntp_servers" {
  default     = ["time-a-g.nist.gov", "time-b-g.nist.gov"]
  description = "List of NTP Servers to Assign to the Policy."
  type        = list(string)
}

variable "timezone" {
  default     = "Etc/GMT"
  description = "Timezone to Assign to the Policy."
  type        = string
}


#____________________________________________________________
#
# Serial over LAN Policy Variables Section.
#____________________________________________________________

variable "sol_baud_rate" {
  default     = 9600
  description = "Baud Rate to Assign to the Policy.  Options are {9600|19200|38400|57600|115200}."
  type        = string
}

variable "com_port" {
  default     = "com0"
  description = "Communications Port to Assign to the Policy.  Options are {com0|com1}."
  type        = string
}

variable "enabled" {
  default     = true
  description = "Flag to Enable or Disable the Policy."
  type        = bool
}

variable "ssh_port" {
  default     = 2400
  description = "SSH Port to Assign to the Policy.  Options are between 1024-65535."
  type        = number
}


#____________________________________________________________
#
# SD Card Policy Variables Section.
#____________________________________________________________

variable "partitions" {
  default     = []
  description = "List of Partitions to Assign to the Policy."
  type        = list(map(string))
}

#____________________________________________________________
#
# SNMP Policy Variables Section.
#____________________________________________________________

variable "auth_password" {
  default     = ""
  description = "SNMP User Auth Password."
  sensitive   = true
  type        = string
}

variable "privacy_password" {
  default     = ""
  description = "SNMP User Privacy Password."
  sensitive   = true
  type        = string
}

variable "snmp_access" {
  default     = "Full"
  description = "Controls access to the information in the inventory tables. Applicable only for SNMPv1 and SNMPv2c users.\r\n * Disabled - Blocks access to the information in the inventory tables.\r\n * Limited - Partial access to read the information in the inventory tables.\r\n * Full - Full access to read the information in the inventory tables."
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
  description = "List of Profiles to Assign to the Policy."
  type        = list(map(string))
}

variable "snmp_users" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
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


#____________________________________________________________
#
# Syslog Policy Variables Section.
#____________________________________________________________

variable "remote_clients" {
  default     = []
  description = "Configure up to 2 remote syslog servers."
  type        = list(map(string))
}

variable "syslog_severity" {
  default     = "warning"
  description = "Lowest level of messages to be included in the local log.\r\n * warning - Use logging level warning for logs classified as warning.\r\n * emergency - Use logging level emergency for logs classified as emergency.\r\n * alert - Use logging level alert for logs classified as alert.\r\n * critical - Use logging level critical for logs classified as critical.\r\n * error - Use logging level error for logs classified as error.\r\n * notice - Use logging level notice for logs classified as notice.\r\n * informational - Use logging level informational for logs classified as informational.\r\n * debug - Use logging level debug for logs classified as debug."
  type        = string
}

#____________________________________________________________
#
# Virtual KVM Policy Variables Section.
#____________________________________________________________

variable "enable_local_server_video" {
  default     = true
  description = "If enabled, displays KVM session on any monitor attached to the server."
  type        = bool
}

variable "enable_video_encryption" {
  default     = true
  description = "If enabled, encrypts all video information sent through KVM."
  type        = bool
}

variable "maximum_sessions" {
  default     = 4
  description = "The maximum number of concurrent KVM sessions allowed. Range is 1 to 4."
  type        = number
}

variable "remote_port" {
  default     = 2068
  description = "The port used for KVM communication. Range is 1 to 65535."
  type        = number
}


#____________________________________________________________
#
# Virtual Media Policy Variables Section.
#____________________________________________________________

variable "encryption" {
  default     = false
  description = "If enabled, allows encryption of all Virtual Media communications."
  type        = bool
}

variable "low_power_usb" {
  default     = false
  description = "If enabled, the virtual drives appear on the boot selection menu after mapping the image and rebooting the host."
  type        = bool
}

variable "mappings" {
  default     = []
  description = "List of Properties to Assign to the Policy."
  type        = list(map(string))
}

