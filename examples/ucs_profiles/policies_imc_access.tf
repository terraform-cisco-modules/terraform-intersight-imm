#____________________________________________________________
#
# Example Intersight IMC Access Policy Module
# GUI Location: Policies > Create Policy > IMC Access
#____________________________________________________________

module "imc_access_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/policies_imc_access"
  description      = "IMC Access Policy Example."
  inband_mgmt_vlan = 1101
  name             = "example"
  profiles         = []
  org_moid         = local.org_moid
  tags             = var.tags
  ipv4_enable      = var.ipv4_enable
  ipv6_enable      = var.ipv6_enable
  imc_ip_pool      = data.terraform_remote_state.pools.outputs.ip_pool_1.moid
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "imc_access_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source            = "terraform-cisco-modules/imm/intersight//modules/policies_imc_access"
  description       = ""
  inband_mgmt_vlan  = 1
  name              = "imc_access"
  profiles          = []
  org_moid          = local.org_moid
  tags              = var.tags
  ipv4_enable       = true
  ipv6_enable       = false
  imc_ip_pool       = ""
}

*/
