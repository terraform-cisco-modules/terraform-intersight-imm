
#____________________________________________________________
#
# Kubernetes Cluster Profile
# GUI Location: Profiles > Kubernetes Cluster Profiles > Create Kubernetes Cluster Profile
#____________________________________________________________

resource "intersight_kubernetes_cluster_profile" "cluster" {
  action              = var.action
  description         = var.description
  name                = var.name
  wait_for_completion = var.wait_for_completion
  cluster_ip_pools {
    moid = var.ip_pool_moid
  }
  # essential_addons {
  #   dynamic "addon_configuration" {
  #     for_each = var.essential_addons
  #     content {
  #       install_strategy = essential_addons.value.install_strategy
  #     }
  #   }
  # }
  management_config {
    load_balancer_count = var.load_balancer
    master_vip          = var.master_vip
    ssh_keys = [
      var.ssh_key
    ]
    ssh_user = var.ssh_user
  }
  net_config {
    moid = var.net_config_moid
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  sys_config {
    moid = var.sys_config_moid
  }
  trusted_registries {
    moid = var.trusted_registry_moid
  }
  dynamic "cert_config" {
    for_each = var.cert_config
    content {
      ca_cert             = cert_config.value.ca_cert
      ca_key              = cert_config.value.ca_key
      etcd_cert           = cert_config.value.etcd_cert
      etcd_encryption_key = cert_config.value.etcd_encryption_key
      etcd_key            = cert_config.value.etcd_key
      front_proxy_cert    = cert_config.value.front_proxy_cert
      front_proxy_key     = cert_config.value.front_proxy_key
      sa_private_key      = cert_config.value.sa_private_key
      sa_public_key       = cert_config.value.sa_public_key
    }
  }
  dynamic "container_runtime_config" {
    for_each = var.container_runtime_config
    content {
      moid = container_runtime_config.value
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