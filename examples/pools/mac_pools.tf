#____________________________________________________________
#
# Example Intersight Pool Module
# GUI Location: Pools > Create Pool
#____________________________________________________________

#______________________________________________
#
# MAC Pool Examples
#______________________________________________

module "mac_pool_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "../../modules/mac_pools"
  assignment_order = "sequential"
  description      = "Example A MAC Pool."
  name             = "mac_pool_a"
  org_moid         = local.org_moid
  tags             = var.tags
  mac_blocks = [
    {
      from = "00:25:B5:0a:00:00"
      to   = "00:25:B5:0a:00:fe"
    }
  ]
}

module "mac_pool_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "../../modules/mac_pools"
  assignment_order = "sequential"
  description      = "Example B MAC Pool."
  name             = "mac_pool_b"
  org_moid         = local.org_moid
  tags             = var.tags
  mac_blocks = [
    {
      from = "00:25:B5:0b:00:00"
      to   = "00:25:B5:0b:00:fe"
    },
    {
      from = "00:25:B5:0c:00:00"
      to   = "00:25:B5:0c:00:fe"
    }
  ]
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "mac_pool_default" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "../../modules/mac_pools"
  assignment_order    = "default"
  description         = ""
  name                = "default"
  org_moid            = local.org_moid
  tags                = var.tags
  mac_blocks          = []
}

*/
