#_______________________________________________________________________
#
# Intersight Kubernetes Virtual Machine Infra Config Policy
# GUI Location: Policies > Create Policy > Virtual Machine Infra Config
#_______________________________________________________________________

data "intersight_asset_target" "vsphere_target" {
  name = var.vsphere_target
}

resource "intersight_kubernetes_virtual_machine_infra_config_policy" "vsphere" {
  depends_on = [
    data.intersight_asset_target.vsphere_target
  ]
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  target {
    object_type = "asset.DeviceRegistration"
    moid        = data.intersight_asset_target.vsphere_target.results.0.registered_device[0].moid
  }
  vm_config {
    additional_properties = jsonencode({
      Datastore    = var.vsphere_datastore
      Cluster      = var.vsphere_cluster
      Passphrase   = var.vsphere_password
      ResourcePool = var.vsphere_resource_pool
    })
    interfaces  = var.vsphere_portgroup
    object_type = "kubernetes.EsxiVirtualMachineInfraConfig"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
