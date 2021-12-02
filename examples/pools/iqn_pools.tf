#______________________________________________
#
# Example IQN Pool
#______________________________________________

module "iqn_pool" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/iqn_pools"
  assignment_order = "sequential"
  description      = "IQN Pool Example."
  name             = "example"
  prefix           = "iqn.2021-07.com.cisco"
  org_moid         = local.org_moid
  tags             = var.tags
  iqn_blocks = {
    "0" = {
      from   = 00
      suffix = "ucs-host"
      size   = 32
      # to     = 31
    }
  }
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "iqn_pool_default" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source            = "terraform-cisco-modules/imm/intersight//modules/iqn_pools"
  assignment_order  = "default"
  description       = ""
  name              = "default"
  org_moid          = local.org_moid
  iqn_prefix        = ""
  tags              = var.tags
  iqn_blocks        = {}
}

*/
