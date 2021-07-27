
#____________________________________________________________
#
# Intersight Kubernetes Service Cluster Node Group Profile
# GUI Location: Profiles > Kubernetes Cluster Profiles > Create Kubernetes Cluster Profile
#____________________________________________________________

resource "intersight_kubernetes_node_group_profile" "node_group_profile" {
  action      = var.action
  description = var.description
  name        = var.name
  node_type   = var.node_type
  desiredsize = var.desired_size
  maxsize     = var.max_size
  ip_pools {
    moid        = var.ip_pool_moid
    object_type = "ippool.Pool"
  }
  kubernetes_version {
    moid        = var.version_moid
    object_type = "kubernetes.VersionPolicy"
  }

  cluster_profile {
    moid        = var.iks_profile_moid
    object_type = "kubernetes.ClusterProfile"
  }
  dynamic "labels" {
    for_each = var.labels
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
