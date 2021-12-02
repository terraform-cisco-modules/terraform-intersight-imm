#____________________________________________________________
#
# Example Intersight IPMI over LAN Policy Module
# GUI Location: Policies > Create Policy > IPMI over LAN
#____________________________________________________________

module "ipmi_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/ipmi_over_lan_policies"
  description = "IPMI Over LAN Policy Example."
  name        = "example"
  profiles    = []
  org_moid    = local.org_moid
  tags        = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "ipmi_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/ipmi_over_lan_policies"
  description           = ""
  enabled               = true
  encryption_key        = ""
  is_encryption_key_set = false
  privilege             = "admin"
  name                  = "ipmi"
  profiles              = []
  org_moid              = local.org_moid
  tags                  = var.tags
}

*/
