#__________________________________________________________________________________________
#
# Kubernetes Cluster Profile
# GUI Location: Profiles > Kubernetes Cluster Profiles > Create Kubernetes Cluster Profile
#__________________________________________________________________________________________

locals {
  container_runtime_moid = var.container_runtime_moid != "" ? [
    var.container_runtime_moid
  ] : []
  trusted_certificate_authority_moid = var.trusted_certificate_authority_moid != "" ? [
    var.trusted_certificate_authority_moid
  ] : []
}
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
    load_balancer_count = var.load_balancer_count
    master_vip          = var.master_vip
    ssh_keys = [
      var.ssh_public_key
    ]
    ssh_user = var.ssh_user
  }
  net_config {
    moid = var.network_cidr_moid
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  sys_config {
    moid = var.nodeos_configuration_moid
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
    for_each = local.container_runtime_moid
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
  dynamic "trusted_registries" {
    for_each = local.trusted_certificate_authority_moid
    content {
      moid = trusted_registries.value
    }
  }
}
