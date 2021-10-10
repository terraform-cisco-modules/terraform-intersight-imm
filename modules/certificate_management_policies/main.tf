#__________________________________________________________________
#
# Intersight Certificate Management Policy
# GUI Location: Policies > Create Policy > Certificate Management
#__________________________________________________________________

resource "intersight_certificatemanagement_policy" "certificate" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  certificates = [
    {
      additional_properties = ""
      certificate = null
      class_id              = "certificatemanagement.Imc"
      enabled               = var.enabled
      is_privatekey_set     = true
      object_type           = "certificatemanagement.Imc"
      pem_certificate       = var.certificate
      privatekey            = var.private_key
    }
  ]
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value.moid
      object_type = profiles.value.object_type
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
