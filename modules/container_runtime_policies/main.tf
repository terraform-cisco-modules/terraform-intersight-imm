#__________________________________________________________________
#
# Intersight Kubernetes Container Runtime Policy
# GUI Location: Policies > Create Policy > Container Runtime
#__________________________________________________________________

resource "intersight_kubernetes_container_runtime_policy" "runtime" {
  description                = var.description
  name                       = var.name
  docker_bridge_network_cidr = var.docker_daemon_bridge_ip
  docker_no_proxy            = var.docker_no_proxy
  docker_http_proxy {
    hostname = var.proxy_http_hostname
    password = var.proxy_http_password
    port     = var.proxy_http_port
    protocol = var.proxy_http_protocol
    username = var.proxy_http_username
  }
  docker_https_proxy {
    hostname = var.proxy_https_hostname
    password = var.proxy_https_password
    port     = var.proxy_https_port
    protocol = var.proxy_https_protocol
    username = var.proxy_https_username
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
