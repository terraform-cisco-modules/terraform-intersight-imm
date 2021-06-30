#____________________________________________________________
#
# Example Intersight Port Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "port_policy_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source       = "terraform-cisco-modules/imm/intersight//modules/domain_port_policy"
  description  = "Port Policy Example."
  device_model = "UCS-FI-64108"
  name         = "example_a"
  org_moid     = local.org_moid
  # profiles     = [
  #   {
  #     moid = module.switch_profile_example_a.moid
  #   }
  # ]
  tags = var.tags
}

module "port_policy_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
  ]
  source       = "terraform-cisco-modules/imm/intersight//modules/domain_port_policy"
  description  = "Port Policy Example."
  device_model = "UCS-FI-64108"
  name         = "example_b"
  org_moid     = local.org_moid
  # profiles     = [ { moid = module.switch_profile_example_b.moid } ]
  tags = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "port_policy_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/domain_port_policy"
  description   = ""
  device_model  = "UCS-FI-6454"
  name          = "port_policy"
  org_moid      = local.org_moid
  profiles      = var.profiles
  tags          = var.tags
}

*/
