#__________________________________________________________________
#
# Intersight Kubernetes Network CIDR Policy
# GUI Location: Policies > Create Policy > Network CIDR
#__________________________________________________________________

resource "intersight_kubernetes_network_policy" "network_cidr" {
  cni_type         = var.cni_type
  description      = var.description
  name             = var.name
  pod_network_cidr = var.pod_network_cidr
  service_cidr     = var.service_cidr
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
