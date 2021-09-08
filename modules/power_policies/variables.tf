#____________________________________________________________
#
# Power Policy Variables Section.
#____________________________________________________________

variable "allocated_budget" {
  default     = 0
  description = "Sets the Allocated Power Budget of the System (in Watts). This field is only supported for Cisco UCS X series Chassis."
  type        = number
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "ssh"
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

variable "power_profiling" {
  default     = "Enabled"
  description = <<-EOT
  Sets the Power Profiling of the Server. This field is only supported for Cisco UCS X series servers.
  * Enabled - Set the value to Enabled.
  * Disabled - Set the value to Disabled.
  EOT
  type        = string
}

variable "power_restore_state" {
  default     = "LastState"
  description = <<-EOT
  Sets the Power Restore State of the Server.
  * AlwaysOff - Set the Power Restore Mode to Off.
  * AlwaysOn - Set the Power Restore Mode to On.
  * LastState - Set the Power Restore Mode to LastState.
  EOT
  type        = string
}

variable "redundancy_mode" {
  default     = "Grid"
  description = <<-EOT
  Sets the Power Redundancy of the System. N+2 mode is only supported for Cisco UCS X series Chassis.
  * Grid - Grid Mode requires two power sources. If one source fails, the surviving PSUs connected to the other source provides power to the chassis.
  * NotRedundant - Power Manager turns on the minimum number of PSUs required to support chassis power requirements. No Redundant PSUs are maintained.
  * N+1 - Power Manager turns on the minimum number of PSUs required to support chassis power requirements plus one additional PSU for redundancy.
  * N+2 - Power Manager turns on the minimum number of PSUs required to support chassis power requirements plus two additional PSU for redundancy. This Mode is only supported for UCS X series Chassis.
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

