#____________________________________________________________
#
# Example Intersight Flow Control Policies Module
# GUI Location: Policies > Create Policy > Flow Control
#____________________________________________________________

module "flow_control_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/flow_control_policies"
  description = "Flow Control Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "flow_control_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                      = "terraform-cisco-modules/imm/intersight//modules/flow_control_policies"
  description                 = ""
  priority_flow_control_mode  = "auto"
  receive_direction           = "Disabled"
  send_direction              = "Disabled"
  name                        = "flow_control"
  org_moid                    = local.org_moid
  tags                        = var.tags
}

*/
