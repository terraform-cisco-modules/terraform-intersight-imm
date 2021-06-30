#______________________________________________
#
# Example IQN Pool
#______________________________________________

module "iqn_pool" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "../../modules/pools_iqn"
  assignment_order = "sequential"
  description      = "IQN Pool Example."
  name             = "example"
  iqn_prefix       = "iqn.2021-07.com.cisco"
  org_moid         = local.org_moid
  tags             = var.tags
  iqn_suffix_blocks = [
    {
      pool_size    = 32
      starting_iqn = 01
      suffix       = "ucs-host"
    }
  ]
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
  source            = "../../modules/pools_iqn"
  assignment_order  = "default"
  description       = ""
  name              = "default"
  org_moid          = local.org_moid
  iqn_prefix        = ""
  tags              = var.tags
  iqn_suffix_blocks = []
}

*/
