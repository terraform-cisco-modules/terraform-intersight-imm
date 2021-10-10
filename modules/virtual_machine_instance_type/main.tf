#________________________________________________________________________
#
# Intersight Kubernetes Virtual Machine Instance Type Policy
# GUI Location: Policies > Create Policy > Virtual Machine Instance Type
#________________________________________________________________________

resource "intersight_kubernetes_virtual_machine_instance_type" "vm_instance_type" {
  cpu         = var.cpu
  description = var.description
  disk_size   = var.system_disk_size
  memory      = var.memory
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
