
#__________________________________________________________________________________________
#
# Intersight Kubernetes - Node Group Profiles
# GUI Location: Profiles > Kubernetes Cluster Profiles > Create Kubernetes Cluster Profile
#__________________________________________________________________________________________

resource "intersight_kubernetes_node_group_profile" "node_group_profile" {
  action      = var.action
  description = var.description
  name        = var.name
  node_type   = var.node_type
  desiredsize = var.desired_size
  minsize     = var.min_size
  maxsize     = var.max_size
  ip_pools {
    moid        = var.ip_pool_moid
    object_type = "ippool.Pool"
  }
  kubernetes_version {
    moid        = var.kubernetes_version_moid
    object_type = "kubernetes.VersionPolicy"
  }

  cluster_profile {
    moid        = var.kubernetes_cluster_moid
    object_type = "kubernetes.ClusterProfile"
  }
  dynamic "labels" {
    for_each = var.kubernetes_labels
    content {
      key   = labels.value.key
      value = labels.value.value
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
