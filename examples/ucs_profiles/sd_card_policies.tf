#____________________________________________________________
#
# Example Intersight SD Card Policy Module
# GUI Location: Policies > Create Policy > SD Card
#____________________________________________________________

module "sd_card_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/sd_card_policies"
  description = "SD Card Policy Example."
  name        = "example"
  # profiles    = [var.profiles]
  org_moid = local.org_moid
  tags     = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "sd_card_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/sd_card_policies"
  description = ""
  name        = "sd_card"
  profiles    = var.profiles
  org_moid    = local.org_moid
  tags        = var.tags
}

*/
