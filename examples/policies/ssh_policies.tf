#____________________________________________________________
#
# Example Intersight SSH Policy Module
# GUI Location: Policies > Create Policy > SSH
#____________________________________________________________

module "ssh_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/ssh_policies"
  description = "SSH Policy Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = []
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "ssh_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/ssh_policies"
  description = ""
  enabled     = true
  name        = "ssh"
  org_moid    = local.org_moid
  profiles    = []
  ssh_port    = 22
  timeout     = 1800
}

*/
