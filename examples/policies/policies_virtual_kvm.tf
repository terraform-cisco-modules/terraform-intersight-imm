#____________________________________________________________
#
# Example Intersight Virtual KVM Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "kvm_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source   = "terraform-cisco-modules/imm/intersight//modules/policies_virtual_kvm"
  name     = "example"
  org_moid = local.org_moid
  profiles = var.profiles
  tags     = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "kvm_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_virtual_kvm"
  description               = ""
  enable_local_server_video = true
  enable_video_encryption   = true
  enabled                   = true
  maximum_sessions          = 4
  name                      = "kvm"
  remote_port               = 2068
  org_moid                  = local.org_moid
  profiles                  = var.profiles
  tags                      = var.tags
}

*/
