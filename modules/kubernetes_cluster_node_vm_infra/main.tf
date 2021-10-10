#____________________________________________________________
#
# Intersight Kubernetes Virtual Machine Infrastructure Provider
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_kubernetes_virtual_machine_infrastructure_provider" "k8s_vm_infra_provider" {
  description = var.description
  name        = var.name
  infra_config_policy {
    moid = var.vm_infra_config_moid
  }
  instance_type {
    moid = var.vm_instance_type_moid
  }
  node_group {
    moid = var.kubernetes_node_pool_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
