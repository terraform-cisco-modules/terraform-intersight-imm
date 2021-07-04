#____________________________________________________________
#
# Example Intersight Device Connector Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "device_connector" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_device_connector"
  description = "Device Connector Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "device_connector_defaults" {
  depends_on  = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_device_connector"
  lockout     = false
  description = ""
  name        = "device_connector"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
}

*/
