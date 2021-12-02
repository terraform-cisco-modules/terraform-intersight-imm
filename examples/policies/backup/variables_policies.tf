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

variable "enable_ipv4" {
  default     = true
  description = "Flag to Enable or Disable the IPv4 Address Family for Poliices."
  type        = bool
}

variable "enable_ipv6" {
  default     = false
  description = "Flag to Enable or Disable the IPv6 Address Family for Poliices."
  type        = bool
}

variable "policy_bucket" {
  default     = []
  description = "List of Policies to Assign to the Profile."
  type        = list(map(string))
}

variable "port_policy_moid" {
  default     = ""
  description = " A reference to a fabricPortPolicy resource."
  type        = string
}

variable "profiles" {
  default     = []
  description = "List of Profiles to Assign to the Policy."
  type        = list(map(string))
}

variable "slot_id" {
  default     = 1
  description = "Slot Identifier of the switch."
  type        = number
}

variable "tags" {
  default     = []
  description = "List of Key/Value Pairs to Assign as Attributes to the Policy."
  type        = list(map(string))
}


#____________________________________________________________
#
# Flow Control Policy Variables Section.
#____________________________________________________________

variable "priority_flow_control_mode" {
  default     = "auto"
  description = "Configure PFC on a per-port basis to enable the no-drop behavior for the CoS as defined by the active network qos policy.\r\n * auto - Enables the no-drop CoS values to be advertised by the DCBXP and negotiated with the peer.  A successful negotiation enables PFC on the no-drop CoS.  Any failures because of a mismatch in the capability of peers causes the PFC not to be enabled.\r\n * on - Enables PFC on the local port regardless of the capability of the peers."
  type        = string
}

variable "receive_direction" {
  default     = "Disabled"
  description = "Link-level Flow Control configured in the receive direction.\r\n * Disabled - Admin configured Disabled State.\r\n * Enabled - Admin configured Enabled State."
  type        = string
}

variable "send_direction" {
  default     = "Disabled"
  description = "Link-level Flow Control configured in the send direction.\r\n * Disabled - Admin configured Disabled State.\r\n * Enabled - Admin configured Enabled State."
  type        = string
}


#____________________________________________________________
#
# Link Aggregation Policy Variables Section.
#____________________________________________________________

variable "lacp_rate" {
  default     = "normal"
  description = "Flag used to indicate whether LACP PDUs are to be sent 'fast', i.e., every 1 second.\r\n * normal - The normal timeout rate is 30 seconds.\r\n * fast - The fast timeout rate is 1 second."
  type        = string
}

variable "suspend_individual" {
  default     = false
  description = "Flag tells the switch whether to suspend the port if it didn’t receive LACP PDU."
  type        = bool
}


#____________________________________________________________
#
# Link Control Policy Variables Section.
#____________________________________________________________

variable "udld_admin_state" {
  default     = "Enabled"
  description = "Admin configured UDLD State for this port.\r\n * Disabled - Admin configured Disabled State.\r\n * Enabled - Admin configured Enabled State."
  type        = string
}

variable "udld_mode" {
  default     = "normal"
  description = "Admin configured UDLD Mode for this port.* normal - Admin configured 'normal' UDLD mode.* aggressive - Admin configured 'aggressive' UDLD mode."
  type        = string
}


#____________________________________________________________
#
# Multicast Policy Variables Section.
#____________________________________________________________

variable "querier_ip" {
  default     = ""
  description = "IP Address of the IGMP Querier to Assign to the VLAN through this Policy."
  type        = string
}

variable "querier_state" {
  default     = "Disabled"
  description = "dministrative state of the IGMP Querier for the VLANs Assigned to this Policy."
  type        = string
}

variable "snooping_state" {
  default     = "Enabled"
  description = "Administrative State for Snoooping for the VLANs Assigned to this Policy."
  type        = string
}


#____________________________________________________________
#
# System QoS Policy Variables Section.
#____________________________________________________________

variable "classes" {
  default     = []
  description = "List of Classes (with Attributes) to Assign to the System QoS Policy."
  type        = list(map(string))
}

#____________________________________________________________
#
# UCS Domain Port Mode Policy Variables Section.
#____________________________________________________________

variable "custom_mode" {
  default     = "FibreChannel"
  description = "Custom Port Mode specified for the port range.\r\n * FibreChannel - Fibre Channel Port Types.\r\n * BreakoutEthernet10G - Breakout Ethernet 10G Port Type.\r\n * BreakoutEthernet25G - Breakout Ethernet 25G Port Type."
  type        = string
}

variable "port_id_end" {
  default     = 4
  description = "Ending range of the Port Identifier."
  type        = number
}

variable "port_id_start" {
  default     = 1
  description = "Starting range of the Port Identifier."
  type        = number
}


#____________________________________________________________
#
# UCS Domain Port Policy Variables Section.
#____________________________________________________________

variable "device_model" {
  default     = "UCS-FI-6454"
  description = "This field specifies the device model that this Port Policy is being configured for.\r\n * UCS-FI-6454 - The standard 4th generation UCS Fabric Interconnect with 54 ports.\r\n * UCS-FI-64108 - The expanded 4th generation UCS Fabric Interconnect with 108 ports.\r\n * unknown - Unknown device type, usage is TBD."
  type        = string
}

#____________________________________________________________
#
# UCS Domain Server Port Policy Variables Section.
#____________________________________________________________

variable "breakout_sw_port" {
  default     = 0
  description = "Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch."
  type        = number
}

variable "port_list" {
  default     = "5-18"
  description = "List of Ports to assign to the Server Port Policy."
  type        = string
}

#____________________________________________________________
#
# UCS Domain Cluster Profile Variables Section.
#____________________________________________________________

variable "domain_action" {
  default     = "No_op"
  description = "System action to trigger the appropriate workflow. Values:\r\n - No_op\r\n - ConfigChange\r\n - Deploy\r\n - Unbind"
  type        = string
}

variable "domain_profiles" {
  default     = []
  description = "An array of relationships to fabricSwitchProfile resources."
  type        = list(map(string))
}

variable "domain_src_template" {
  default     = []
  description = "A reference to a policyAbstractProfile resource."
  type        = list(map(string))
}

variable "domain_type" {
  default     = "instance"
  description = "Defines the type of the profile. Accepted values are instance or template."
  type        = string
}

#____________________________________________________________
#
# UCS Domain Switch Profile Variables Section.
#____________________________________________________________

variable "cluster_moid" {
  default     = []
  description = "List of UCS Domain Cluster Profiles to Assign to the Switch Profile."
  type        = list(map(string))
}

variable "switch_action" {
  default     = "No-op"
  description = "Action to Perform on the Switch Profile Assignment.  Options are {Deploy|No-op|Unassign}."
  type        = string
}

variable "switch_type" {
  default     = "instance"
  description = "Defines the type of the profile. Accepted values are instance or template."
  type        = string
}

#____________________________________________________________
#
# UCS Domain Switch Control Policy Variables Section.
#____________________________________________________________

variable "mac_aging_option" {
  default     = "Default"
  description = "his specifies one of the option to configure the MAC address aging time.\r\n * Default - This option sets the default MAC address aging time to 14500 seconds for End Host mode.\r\n * Custom - This option allows the the user to configure the MAC address aging time on the switch. For Switch Model UCS-FI-6454 or higher, the valid range is 120 to 918000 seconds and the switch will set the lower multiple of 5 of the given time.\r\n * Never - This option disables the MAC address aging process and never allows the MAC address entries to get removed from the table."
  type        = string
}

variable "mac_aging_time" {
  default     = 120
  description = "Define the MAC address aging time in seconds.  Range is between 120 to 918000, in multiples of 5, when mac_aging_option is set to Custom."
  type        = string
}

variable "udld_message_interval" {
  default     = 15
  description = "Configures the time between UDLD probe messages on ports that are in advertisement mode and arecurrently determined to be bidirectional.  Valid values are from 7 to 90 seconds."
  type        = number
}

variable "udld_recovery_action" {
  default     = "none"
  description = "UDLD recovery when enabled, attempts to bring an UDLD error-disabled port out of reset.\r\n * none - No action is taken when a port has been disabled.\r\n * reset - The switch will attempt to bring a UDLD error-disabled port back online."
  type        = string
}

variable "vlan_optimization" {
  default     = false
  description = "To enable or disable the VLAN port count optimization."
  type        = bool
}

#____________________________________________________________
#
# UCS Domain LAN Uplink Policy Variables Section.
#____________________________________________________________

variable "fec" {
  default     = "Auto"
  description = "Forward error correction configuration for the port.\r\n * Auto - Forward error correction option 'Auto'.\r\n * Cl91 - Forward error correction option 'cl91'.\r\n * Cl74 - Forward error correction option 'cl74'."
  type        = string
}

variable "flow_control_moid" {
  default     = []
  description = "A reference to a fabricFlowControlPolicy resource."
  type        = set(string)
}

variable "lan_uplink_port_list" {
  default     = [53, 54]
  description = "List of Ports to Assign to the LAN Uplink Policy."
  type        = set(string)
}

variable "lan_uplink_speed" {
  default     = "Auto"
  description = "Admin configured speed for the port.\r\n * Auto - Admin configurable speed AUTO ( default ).\r\n * 1Gbps - Admin configurable speed 1Gbps.\r\n * 10Gbps - Admin configurable speed 10Gbps.\r\n * 25Gbps - Admin configurable speed 25Gbps.\r\n * 40Gbps - Admin configurable speed 40Gbps.\r\n * 100Gbps - Admin configurable speed 100Gbps."
  type        = string
}

variable "link_control_moid" {
  default     = []
  description = "A reference to a fabricLinkControlPolicy resource."
  type        = set(string)
}

#____________________________________________________________
#
# UCS Domain LAN Uplink Port-Channel Policy Variables Section.
#____________________________________________________________

variable "lan_uplink_pc_ports" {
  default     = []
  description = "List of Ports to Assign to the LAN Port-Channel Policy."
  type        = set(string)
}

variable "lan_uplink_pc_id" {
  default     = 53
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = string
}

variable "link_aggregation_moid" {
  default     = []
  description = "A reference to a fabricLinkAggregationPolicy resource."
  type        = set(string)
}


#____________________________________________________________
#
# UCS Domain SAN Uplink Policy Variables Section.
#____________________________________________________________

variable "fill_pattern" {
  default     = "Idle"
  description = "Fill pattern to differentiate the configs in NPIV.\r\n * Idle - Fc Fill Pattern type Idle.\r\n * Arbff - Fc Fill Pattern type Arbff."
  type        = string
}

variable "san_uplink_port_list" {
  default     = [1, 2]
  description = "List of Ports to Assign to the SAN Uplink Policy."
  type        = set(string)
}

variable "san_uplink_speed" {
  default     = "Auto"
  description = "Admin configured speed for the port.\r\n * Auto - Admin configurable speed AUTO ( default ).\r\n * 8Gbps - Admin configurable speed 8Gbps.\r\n * 16Gbps - Admin configurable speed 16Gbps.\r\n * 32Gbps - Admin configurable speed 32Gbps."
  type        = string
}

variable "vsan_id" {
  default     = 1
  description = "Virtual San Identifier associated to the FC port."
  type        = number
}

#____________________________________________________________
#
# UCS Domain SAN Uplink Port-Channel Policy Variables Section.
#____________________________________________________________

variable "san_uplink_pc_ports" {
  default     = []
  description = "List of Ports to Assign to the SAN Port-Channel Policy."
  type        = set(string)
}

variable "san_uplink_pc_id" {
  default     = 1
  description = "Unique Identifier of the port-channel, local to this switch."
  type        = string
}


#____________________________________________________________
#
# UCS Domain VLANs Variables Section.
#____________________________________________________________

variable "auto_allow_on_uplinks" {
  default     = true
  description = "Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI."
  type        = bool
}

variable "is_native" {
  default     = false
  description = "Used to determine if this VLAN should be untagged on the interfaces."
  type        = bool
}

variable "multicast_moid" {
  default     = ""
  description = "Multicast Policy moid map."
  type        = string
}

variable "vlan_prefix" {
  default     = "VLAN"
  description = "Prefix Name for VLANs."
  type        = string
}

variable "vlan_policy_moid" {
  default     = ""
  description = "VLAN Policy (Ethernet Network Policy) moid."
  type        = string
}


#____________________________________________________________
#
# UCS Domain VSAN Policy Variables Section.
#____________________________________________________________

variable "enable_trunking" {
  default     = false
  description = "Enable or Disable Trunking on all of configured FC uplink ports."
  type        = bool
}

#____________________________________________________________
#
# UCS Domain VSANs Variables Section.
#____________________________________________________________

variable "default_zoning" {
  default     = "Disabled"
  description = "Enables or Disables the default zoning state.\r\n * Enabled - Admin configured Enabled State.\r\n * Disabled - Admin configured Disabled State."
  type        = string
}

variable "fc_zone_sharing_mode" {
  default     = ""
  description = "Logical grouping mode for fc ports."
  type        = string
}

variable "vsan_list" {
  default = {}
  type = map(object({
    fcoe_vlan = number
    vsan_id   = number
  }))
}

variable "vsan_prefix" {
  default     = "VLAN"
  description = "Prefix Name for VSANs."
  type        = string
}

variable "vsan_policy_moid" {
  default     = ""
  description = "VSAN Policy (Fibre-Channel Network Policy) moid."
  type        = string
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
# Local User Variables Section.
#____________________________________________________________

variable "user_1_password" {
  description = "Password for Local User 1 Example."
  sensitive   = true
  type        = string
}

variable "user_2_password" {
  description = "Password for Local User 2 Example."
  sensitive   = true
  type        = string
}


variable "persistent_passphrase" {
  description = "Password for Persistent Memory Example."
  sensitive   = false
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

