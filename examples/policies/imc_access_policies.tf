#____________________________________________________________
#
# Example Intersight IMC Access Policy Module
# GUI Location: Policies > Create Policy > IMC Access
#____________________________________________________________

module "imc_access_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version        = ">=0.9.6"
  source         = "terraform-cisco-modules/imm/intersight//modules/imc_access_policies"
  description    = "IMC Access Policy Example."
  inband_vlan_id = 1101
  name           = "example"
  profiles       = []
  org_moid       = local.org_moid
  tags           = var.tags
  enable_ipv4    = var.enable_ipv4
  enable_ipv6    = var.enable_ipv6
  inband_ip_pool = data.terraform_remote_state.pools.outputs.ip_pool_1.moid
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
  source         = "terraform-cisco-modules/imm/intersight//modules/imc_access_policies"
  description    = ""
  enable_ipv4    = true
  enable_ipv6    = false
  inband_ip_pool = ""
  inband_vlan_id = 1
  name           = "imc_access"
  profiles       = []
  org_moid       = local.org_moid
  tags           = var.tags
}

*/
