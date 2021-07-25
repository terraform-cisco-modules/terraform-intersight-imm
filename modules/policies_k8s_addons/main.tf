#____________________________________________________________
#
# Intersight Kubernetes Addon Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

data "intersight_kubernetes_addon_definition" "addon" {
  name     = var.addon
}

resource "intersight_kubernetes_addon_policy" "addon" {
  description    = var.description
  name           = var.name
  addon_configuration {
    install_strategy = var.install_strategy
    release_name     = var.release_name
    upgrade_strategy = var.upgrade_strategy
  }
  addon_definition {
    moid = data.intersight_kubernetes_addon_definition.addons.results.0.moid
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
