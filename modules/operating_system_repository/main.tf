#________________________________________________________________________
#
# Intersight Operating System Repository
# GUI Location: Software Repository > OS Image Links > Add OS Image Link
#________________________________________________________________________

resource "intersight_softwarerepository_operating_system_file" "repository" {
  description   = var.description
  import_action = var.import_action
  md5sum        = var.md5sum
  name          = var.name
  nr_version    = var.vendor_version
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  sha512sum             = var.sha512sum
  size                  = var.size
  software_advisory_url = var.software_advisory_url
  vendor                = var.vendor
  dynamic "catalog" {
    for_each = var.catalog
    content {
      moid        = catalog.value.moid
      object_type = catalog.value.object_type
    }
  }
  dynamic "nr_source" {
    for_each = var.repository
    content {
      additional_properties = nr_source.value.additional_properties
      object_type           = nr_source.value.object_type
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
