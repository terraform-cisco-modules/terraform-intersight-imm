#________________________________________________________________________________________
#
# Intersight Operating System Configuration File
# GUI Location: Software Repository > OS Configuration Files > Add OS Configuration File
#________________________________________________________________________________________

resource "intersight_os_configuration_file" "config" {
  description   = var.description
  import_action = var.import_action
  md5sum        = var.md5sum
  name          = var.name
  nr_version    = var.vendor_version
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  release_notes_url     = var.release_notes_url
  sha512sum             = var.sha512sum
  size                  = var.size
  software_advisory_url = var.software_advisory_url
  supported_models      = var.supported_models
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
  dynamic "release" {
    for_each = var.release
    content {
      moid = release.value
      # object_type = ??
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
