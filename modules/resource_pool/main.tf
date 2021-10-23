#____________________________________________________________
#
# Intersight Resource Pool Resource
# GUI Location: Pools > Create Pool > Resource Pool
#____________________________________________________________

resource "intersight_resourcepool_pool" "resource_pool" {
  assignment_order = var.assignment_order
  description      = var.description
  name             = var.name
  pool_type        = var.pool_type
  resource_pool_parameters = {
    object_type = "resourcepool.ServerPoolParameters"
  }
  resource_type        = var.resource_type
  selectors = {
    object_type = "resource.Selector"
    selector = "/api/v1/compute/${server_type}?$filter=(moid in (${moid_list})) and (ManagementMode eq 'Intersight')"
  }
  organization {
    object_type = "organization.Organization"
    moid        = var.org_moid
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
