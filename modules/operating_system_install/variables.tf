#____________________________________________________________
#
# Flow Control Policy Variables Section.
#____________________________________________________________

variable "answers" {
  default = {
    default = {
      ip_config_type = "DHCP"
    }
  }
  description = <<-EOT
  * ip_config_type - IP configuration type. Values are Static or Dynamic configuration of IP.In case of static IP configuration, IP address, gateway and other details needto be populated. In case of dynamic the IP configuration is obtained dynamicallyfrom DHCP.
    - DHCP - (Default).  In case of dynamic IP configuration, the IP address, netmask and gateway detailsare obtained from DHCP.
    - static - In case of static IP configuraton, provide the details such as IP address, netmask, and gateway.
  EOT
  type = map(object(
    {
      ip_config_type = string
    }
  ))
}

variable "description" {
  default     = ""
  description = "Description for the Policy."
  type        = string
}

variable "name" {
  default     = "install"
  description = "Name for the Policy."
  type        = string
}

variable "install_method" {
  default     = "vMedia"
  description = <<-EOT
  The install method to be used for OS installation - vMedia, iPXE. Only vMedia is supported as of now.
  * vMedia - OS image is mounted as vMedia in target server for OS installation.
  EOT
  type        = string
}

variable "install_target" {
  default     = "vMedia"
  description = <<-EOT
  Install Target on which Operating system is installed.
  * vMedia - OS image is mounted as vMedia in target server for OS installation.
  EOT
  type        = string
}

variable "receive_direction" {
  default     = "Disabled"
  description = <<-EOT
  Link-level Flow Control configured in the receive direction.
  * Disabled - Admin configured Disabled State.
  * Enabled - Admin configured Enabled State.
  EOT
  type        = string
}

variable "send_direction" {
  default     = "Disabled"
  description = <<-EOT
  Link-level Flow Control configured in the send direction.
  * Disabled - Admin configured Disabled State.
  * Enabled - Admin configured Enabled State.
  EOT
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}

variable "wait_for_completion" {
  default     = false
  description = "This model object can trigger workflows. Use this option to wait for all running workflows to reach a complete state."
  type        = bool
}
