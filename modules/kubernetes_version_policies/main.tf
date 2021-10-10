#__________________________________________________________________
#
# Intersight Kubernetes Version Policy
# GUI Location: Policies > Create Policy > Kubernetes Version
#__________________________________________________________________

#Importing the Kubernetes Version available
data "intersight_kubernetes_version" "version" {
  kubernetes_version = var.kubernetes_version
}

resource "intersight_kubernetes_version_policy" "version" {
  depends_on = [
    data.intersight_kubernetes_version.version
  ]
  description = var.description
  name        = var.name
  nr_version {
    moid        = data.intersight_kubernetes_version.version.results.0.moid
    object_type = "kubernetes.Version"
  }
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
