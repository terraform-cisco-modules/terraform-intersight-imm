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
  certificates {
    certificate {
      pem_certificate = var.base64_certificate
    }
    enabled    = var.enabled
    privatekey = var.base64_private_key
  }
}
