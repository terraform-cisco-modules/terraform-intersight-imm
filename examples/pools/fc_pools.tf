#____________________________________________________________
#
# Example Intersight Pool Module
# GUI Location: Pools > Create Pool
#____________________________________________________________

#______________________________________________
#
# Example WWNN and WWPN Pools
#______________________________________________

module "wwnn_pool" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/fc_pools"
  assignment_order = "sequential"
  description      = "WWNN Pool Example."
  name             = "wwn_pool"
  org_moid         = local.org_moid
  pool_purpose     = "WWNN"
  tags             = var.tags
  id_blocks = {
    "0" = {
      from = "20:00:00:25:B5:00:00:00"
      size = 256
      # to   = "20:00:00:25:B5:00:01:ff"
    }
  }
}

module "wwpn_pool_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/fc_pools"
  assignment_order = "sequential"
  description      = "WWPN Pool A Example."
  name             = "wwpn_pool_a"
  org_moid         = local.org_moid
  tags             = var.tags
  id_blocks = {
    "0" = {
      from = "20:00:00:25:B5:0a:00:00"
      size = 256
      # to   = "20:00:00:25:B5:0a:00:ff"
    },
    "1" = {
      from = "20:00:00:25:B5:0a:01:00"
      size = 256
      # to   = "20:00:00:25:B5:0a:01:ff"
    }
  }
}

module "wwpn_pool_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/fc_pools"
  assignment_order = "sequential"
  description      = "WWPN Pool B Example."
  name             = "wwpn_pool_b"
  org_moid         = local.org_moid
  tags             = var.tags
  id_blocks = {
    "0" = {
      from = "20:00:00:25:B5:0b:00:00"
      size = 256
      # to   = "20:00:00:25:B5:0b:00:ff"
    },
    "1" = {
      from = "20:00:00:25:B5:0b:01:00"
      size = 256
      # to   = "20:00:00:25:B5:0b:01:ff"
    }
  }
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "wwxn_pool_default" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/fc_pools"
  assignment_order    = "default"
  description         = ""
  name                = "default"
  org_moid            = local.org_moid
  pool_purpose        = "WWPN"
  tags                = var.tags
  id_blocks           = {}
}

*/
