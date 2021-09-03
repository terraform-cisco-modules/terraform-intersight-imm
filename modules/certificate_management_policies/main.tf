#__________________________________________________________________
#
# Intersight Certificate Management Policy
# GUI Location: Policies > Create Policy > Certificate Management
#__________________________________________________________________

resource "intersight_certificatemanagement_policy" "certificates" {
  description = var.description
  name        = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  /*
  dynamic "certificates" {
    for_each = var.certificates
    content {
      object_type = "certificatemanagement.Imc"
      certificate = {
        certificate
        issuer
        common_name
        country
        locality

        enabled     = certificates.value.enabled
        object_type = "x509.Certificate"
      }
    }
  }
*/
  dynamic "profiles" {
    for_each = var.profiles
    content {
      moid        = profiles.value
      object_type = "server.Profile"
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