locals {
  vlan_list = var.list_type == "range" ? [for s in range(var.start, var.stop) : tonumber(s)] : var.vlan_list
  # verything = "${slice(var.vlan_list, 0, length(var.vlan_list)  )}"
  # everything1 = "${for }"
}
variable "list_type" {
  default = "list"
  type    = string
}

variable "vlan_list" {
  default = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
  type    = list(number)
}

variable "start" {
  default = 1
  type    = number
}

variable "stop" {
  default = 11
  type    = number
}


output "vlan_list" {
  value = local.vlan_list
  # value = "${join(",", local.everything)}"
}

variable "vlan_list2" {
  default = "range(1,100)"
}

# output "vlan_list2" {
#   value = {for i in toset(var.vlan_list2): "vlan" => i}
# }
