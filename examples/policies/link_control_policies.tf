#____________________________________________________________
#
# Example Intersight Link Control Policies Module
# GUI Location: Policies > Create Policy > Link Control
#____________________________________________________________

module "link_control_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/link_control_policies"
  description = "Link Control Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "link_control_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source            = "terraform-cisco-modules/imm/intersight//modules/link_control_policies"
  description       = ""
  udld_admin_state  = "Enabled"
  udld_mode         = "normal"
  name              = "link_control"
  org_moid          = local.org_moid
  tags              = var.tags
}

*/
