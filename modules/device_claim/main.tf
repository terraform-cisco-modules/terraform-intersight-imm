#__________________________________________________________________
#
# Intersight Claim Target
# GUI Location: Admin > Targets > Claim Target
#__________________________________________________________________

resource "intersight_appliance_device_claim" "claim_target" {
  device_id       = var.device_id
  hostname        = var.hostname
  is_password_set = var.is_password_set
  password        = var.password
  platform_type   = var.platform_type
  security_token  = var.security_token
  username        = var.username
  account {
    moid        = var.account_moid
    object_type = "intersight_account_iam.iam1.id"
  }
}
