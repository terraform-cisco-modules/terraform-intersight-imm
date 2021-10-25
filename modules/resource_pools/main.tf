#____________________________________________________________
#
# Server Moid Data Source
# GUI Location:
#   Operate > Servers > Copy the Serial from the Column.
#____________________________________________________________

data "intersight_compute_physical_summary" "server" {
  for_each = {
    for v in var.serial_number_list : v => v
  }
  serial = each.value
}

locals {
  server_moids = [
    for k, v in data.intersight_compute_physical_summary.server : data.intersight_compute_physical_summary.server[k].results[0].moid
  ]
  moid_join = join("', '", local.server_moids)
  moid_list = format("'%s'", local.moid_join)
}

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
  resource_pool_parameters = [
    {
      additional_properties = jsonencode(
        {
          ManagementMode = "Intersight"
        }
      )
      class_id    = "resourcepool.ServerPoolParameters"
      object_type = "resourcepool.ServerPoolParameters"
    }
  ]
  resource_type = var.resource_type
  selectors = [
    {
      additional_properties = ""
      class_id              = "resource.Selector"
      object_type           = "resource.Selector"
      selector              = "/api/v1/compute/${var.server_type}?$filter=(Moid in (${local.moid_list})) and (ManagementMode eq 'Intersight')"
    }
  ]
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
