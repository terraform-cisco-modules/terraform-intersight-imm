#____________________________________________________________
#
# Example Intersight Multicast Policies Module
# GUI Location: Policies > Create Policy > Multicast
#____________________________________________________________

module "multicast_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/multicast_policies"
  description = "Multicast Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "multicast_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/multicast_policies"
  description         = ""
  querier_ip          = ""
  querier_state       = "Disabled"
  snooping_state      = "Enabled"
  name                = "multicast"
  org_moid            = local.org_moid
  tags                = var.tags
}

*/
