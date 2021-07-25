#____________________________________________________________
#
# Kubernetes Cluster Addons
# GUI Location: Profiles > Kubernetes Cluster Profiles > Create Kubernetes Cluster Profile
#____________________________________________________________

data "intersight_kubernetes_addon_policy" "addons" {
  for_each = var.addons
  name     = each.value.addon
}

resource "intersight_kubernetes_cluster_addon_profile" "cluster_addon" {
  name           = var.name
  associated_cluster {
    moid = var.cluster_moid
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "addons" {
    for_each = var.addons
    content {
      addon_policy {
        moid = data.intersight_kubernetes_addon_policy["${addons.value.addon}"].results.0.moid
      }
      name = data.intersight_kubernetes_addon_policy["${addons.value.addon}"].results.0.name
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
