#____________________________________________________________
#
# Resource Pool Variables Section.
#____________________________________________________________

variable "assignment_order" {
  default     = "default"
  description = <<-EOT
  Assignment order decides the order in which the next identifier is allocated.
  * sequential - Identifiers are assigned in a sequential order.
  * default - Assignment order is decided by the system.
  EOT
  type        = string
}

variable "description" {
  default     = ""
  description = "Description for the MAC Address Pool."
  type        = string
}

variable "name" {
  default     = "resource_pool"
  description = "Name for the MAC Pool."
  type        = string
}

variable "org_moid" {
  description = "Intersight Organization moid."
  type        = string
}

variable "pool_type" {
  default     = "Static"
  description = <<-EOT
  The resource management type in the pool, it can be either static or dynamic.
  * Dynamic - The resources in the pool will be updated dynamically based on the condition.
  * Static - The resources in the pool will not be changed until user manually update it.
  EOT
  type        = string
}

variable "resource_type" {
  default     = "Server"
  description = <<-EOT
  The type of the resource present in the pool, example 'server' its combination of RackUnit and Blade.
  * None - The resource cannot consider for Resource Pool.
  * Server - Resource Pool holds the server kind of resources, example - RackServer, Blade.
  EOT
  type        = string
}

variable "serial_number_list" {
  description = "A List of Compute Server Serial Numbers."
  type        = set(string)
}

variable "server_type" {
  default     = "Blades"
  description = <<-EOT
  The type of the resource present in the pool, example 'server' its combination of RackUnit and Blade.
  * Blades - A Blade Server.
  * RackUnits - A Rackmount Server.
  EOT
  type        = string
}

variable "tags" {
  default     = []
  description = "List of Tag Attributes to Assign to the Policy."
  type        = list(map(string))
}
