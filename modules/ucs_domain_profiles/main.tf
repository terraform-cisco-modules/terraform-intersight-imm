#____________________________________________________________
#
# Intersight UCS Domain Cluster Profile Resource
# GUI Location: Profiles > UCS Domain Profile > Create
#____________________________________________________________

resource "intersight_fabric_switch_cluster_profile" "domain_profile" {
  description = var.description
  name        = var.name
  type        = var.domain_type
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "src_template" {
    for_each = var.domain_src_template
    content {
      moid = src_template.value.moid
    }
  }
  dynamic "switch_profiles" {
    for_each = var.domain_profiles
    content {
      moid = switch_profiles.value.moid
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
