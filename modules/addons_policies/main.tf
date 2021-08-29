#__________________________________________________________________
#
# Intersight Kubernetes Add-ons Policy
# GUI Location: Policies > Create Policy > Add-ons
#__________________________________________________________________

data "intersight_kubernetes_addon_definition" "addons" {
  name = var.addon
}

resource "intersight_kubernetes_addon_policy" "addons" {
  depends_on = [
    data.intersight_kubernetes_addon_definition.addons
  ]
  description = var.description
  name        = var.name
  addon_configuration {
    install_strategy  = var.install_strategy
    release_name      = var.release_name
    release_namespace = var.release_namespace
    upgrade_strategy  = var.upgrade_strategy
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
