#____________________________________________________________
#
# Example Intersight IPMI over LAN Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "ipmi_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_ipmi_over_lan"
  description = "IPMI Over LAN Policy Example."
  name        = "example"
  profiles    = var.profiles
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
  source                = "terraform-cisco-modules/imm/intersight//modules/policies_ipmi_over_lan"
  description           = ""
  enabled               = true
  encryption_key        = ""
  is_encryption_key_set = false
  privilege             = "admin"
  name                  = "ipmi"
  profiles              = var.profiles
  org_moid              = local.org_moid
  tags                  = var.tags
}

*/
