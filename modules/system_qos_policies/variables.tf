terraform {
  experiments = [module_variable_optional_attrs]
}

#____________________________________________________________
#
# System QoS Policy Variables Section.
#____________________________________________________________

variable "classes" {
  default = {
    default = {
      bandwidth_percent  = 0
      cos                = 0
      mtu                = 1500
      multicast_optimize = false
      packet_drop        = true
      state              = "Disabled"
      weight             = 0
    }
  }
  description = <<-EOT
  System QoS Classes to Configure for the Domain.  When configuring the System Classes Must be Configured in the Following Order:
  * classes_key - Name of the priority class.  You must configure all the following classes:
    - Best Effort
    - Bronze
    - FC
    - Gold
    - Platinum
    - Silver
  * bandwidth_percent - Percentage of bandwidth Assigned to traffic traffic tagged with this Class.
  * cos - Class of service Assigned to the System QoS Class.
    - Best Effort - By default is 255 and cannot be changed.
    - Bronze - By default is 1.
    - FC - By default is 3 and cannot be changed.
    - Gold - By default is 4.
    - Platinum - By default is 5.
    - Silver - By default is 2.
  * mtu - Maximum transmission unit (MTU) is the largest size packet or frame,that can be sent in a packet- or frame-based network such as the Internet.  Range is 1500-9216.
    - FC is 2240 and cannot be changed
    - All other priorities have a default of 1500 but can be configured in the range of 1500 to 9216.
  * multicast_optimize - Default is false.  If enabled, this QoS class will be optimized to send multiple packets.
  * state - Administrative state for the QoS class.
    - Disabled - Admin configured Disabled State.
    - Enabled - Admin configured Enabled State.
    Note: "Best Effort" and "FC" Classes are "Enabled" and cannot be "Disabled".
  * weight - The weight of the QoS Class controls the distribution of bandwidth between QoS Classes,with the same priority after the Guarantees for the QoS Classes are reached.
    - Best Effort - By default is 5.
    - Bronze - By default is 7.
    - FC - By default is 5.
    - Gold - By default is 9.
    - Platinum - By default is 10.
    - Silver - By default is 8.
  EOT
  type = map(object(
    {
      bandwidth_percent  = optional(number)
      cos                = optional(number)
      mtu                = optional(number)
      multicast_optimize = optional(bool)
      packet_drop        = optional(bool)
      state              = optional(string)
      weight             = optional(number)
    }
  ))
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "system_qos_policy"
  description = "Name for the Policy."
  type        = string
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
    - fabric.SwitchProfile - For UCS Domain Switch Profiles.
  EOT
  type = map(object(
    {
      moid        = string
      object_type = string
    }
  ))
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
