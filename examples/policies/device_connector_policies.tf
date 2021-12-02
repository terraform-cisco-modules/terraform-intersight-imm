#____________________________________________________________
#
# Example Intersight Device Connector Policy Module
# GUI Location: Policies > Create Policy > Device Connector
#____________________________________________________________

module "device_connector" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/device_connector_policies"
  description = "Device Connector Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = {}
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
  source      = "terraform-cisco-modules/imm/intersight//modules/device_connector_policies"
  lockout     = false
  description = ""
  name        = "device_connector"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
}

*/
