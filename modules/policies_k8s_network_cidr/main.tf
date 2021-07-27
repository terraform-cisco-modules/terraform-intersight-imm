#____________________________________________________________
#
# Intersight Kubernetes Network CIDR Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_kubernetes_network_policy" "network_cidr" {
  cni_type         = var.cni_type
  description      = var.description
  name             = var.name
  pod_network_cidr = var.cidr_pod
  service_cidr     = var.cidr_service
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
