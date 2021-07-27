#____________________________________________________________
#
# Kubernetes Cluster Addons
# GUI Location: Profiles > Kubernetes Cluster Profiles > Create Kubernetes Cluster Profile
#____________________________________________________________

resource "intersight_kubernetes_cluster_addon_profile" "cluster_addon" {
  name = var.name
  associated_cluster {
    moid = var.iks_cluster_moid
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "addons" {
    for_each = var.addons
    content {
      addon_policy {
        moid = addons.value.moid
      }
      name = addons.value.name
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
