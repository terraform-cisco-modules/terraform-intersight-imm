#__________________________________________________________________________
#
# Intersight Kubernetes Trusted Certificate Authorities Policy
# GUI Location: Policies > Create Policy > Trusted Certificate Authorities
#__________________________________________________________________________

resource "intersight_kubernetes_trusted_registries_policy" "trusted_registries" {
  description         = var.description
  name                = var.name
  root_ca_registries  = var.root_ca_registries
  unsigned_registries = var.unsigned_registries
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
