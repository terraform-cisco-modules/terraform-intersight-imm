#____________________________________________________________
#
# Example Intersight Local User Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

#______________________________________________
#
# Local User Policy Example
#______________________________________________

module "local_user_policy_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/local_user_policies"
  description = "Local User Policy Example; accepting default values."
  name        = "local_user_policy"
  org_moid    = local.org_moid
  profiles    = {}
  tags        = var.tags
}


#______________________________________________
#
# Local User Examples
#______________________________________________

module "local_user_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.local_user_policy_example
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/local_user_add_users"
  org_moid         = local.org_moid
  user_enabled     = true
  user_password    = var.user_1_password
  user_policy_moid = module.local_user_policy_example.moid
  user_role        = "readonly"
  username         = "server_ops_user"
}

module "local_user_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.local_user_policy_example
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/local_user_add_users"
  org_moid         = local.org_moid
  user_enabled     = true
  user_password    = var.user_2_password
  user_policy_moid = module.local_user_policy_example.moid
  user_role        = "admin"
  username         = "server_admin"
}


#______________________________________________
#
# Local User Policy Default Values
#______________________________________________

/*

module "local_user_policy_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source                   = "terraform-cisco-modules/imm/intersight//modules/local_user_policies"
  description              = ""
  enable_password_expiry   = false
  enforce_strong_password  = true
  force_send_password      = false
  grace_period             = 0
  name                     = "local_user_policy"
  notification_period      = 15
  org_moid                 = local.org_moid
  password_expiry_duration = 90
  password_history         = 5
  profiles                 = []
  tags                     = var.tags
}


#______________________________________________
#
# Local User Defaults
#______________________________________________

module "local_user_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/local_user_add_users"
  org_moid         = local.org_moid
  password         = **no default, required attribute**
  user_enabled     = true
  user_policy_moid = **no default, required attribute**
  user_role        = "admin"
  username         = **no default, required attribute**
}

*/

