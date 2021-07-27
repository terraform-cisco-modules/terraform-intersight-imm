#____________________________________________________________
#
# Intersight Kubernetes Trusted Registries Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

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
