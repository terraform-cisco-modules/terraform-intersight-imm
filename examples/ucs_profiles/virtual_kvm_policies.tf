#____________________________________________________________
#
# Example Intersight Virtual KVM Policy Module
# GUI Location: Policies > Create Policy > Virtual KVM
#____________________________________________________________

module "kvm_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/virtual_kvm_policies"
  description = "Virtual KVM Policy Example."
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

module "kvm_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                    = "terraform-cisco-modules/imm/intersight//modules/virtual_kvm_policies"
  description               = ""
  enable_local_server_video = true
  enable_video_encryption   = true
  enabled                   = true
  maximum_sessions          = 4
  name                      = "kvm"
  remote_port               = 2068
  org_moid                  = local.org_moid
  profiles                  = []
  tags                      = var.tags
}

*/
