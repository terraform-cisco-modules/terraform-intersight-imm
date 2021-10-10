#__________________________________________________________________
#
# Intersight Kubernetes Node OS Configuration Policy
# GUI Location: Policies > Create Policy > Node OS Configuration
#__________________________________________________________________

resource "intersight_kubernetes_sys_config_policy" "nodeos_config" {
  description     = var.description
  dns_domain_name = var.dns_suffix
  dns_servers     = var.dns_servers
  name            = var.name
  ntp_servers     = var.ntp_servers
  timezone        = var.timezone
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
