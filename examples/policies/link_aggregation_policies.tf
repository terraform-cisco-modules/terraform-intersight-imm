#____________________________________________________________
#
# Example Intersight Link Aggregation Policies Module
# GUI Location: Policies > Create Policy > Link Aggregation
#____________________________________________________________

module "link_aggregation_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/link_aggregation_policies"
  description = "Link Aggregation Policy Example."
  lacp_rate   = "normal"
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "link_aggregation_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/link_aggregation_policies"
  description         = ""
  lacp_rate           = "fast"
  suspend_individual  = false
  name                = "link_aggregation"
  org_moid            = local.org_moid
  tags                = var.tags
}

*/
