#____________________________________________________________
#
# Example Intersight UUID Pool Module
# GUI Location: Pools > Create Pool
#____________________________________________________________

#______________________________________________
#
# UUID Pool Examples
#______________________________________________

module "uuid_pool" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version          = ">=0.9.6"
  source           = "terraform-cisco-modules/imm/intersight//modules/uuid_pools"
  assignment_order = "sequential"
  description      = "Example UUID Pool."
  name             = "uuid_pool"
  org_moid         = local.org_moid
  prefix           = "000025B5-0000-0000"
  tags             = var.tags
  uuid_blocks = {
    "0" = {
      from = "0000-000000000000"
      size = 1000
      # to   = "0000-0000000003E7"
    }
  }
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "uuid_default" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source           = "terraform-cisco-modules/imm/intersight//modules/uuid_pools"
  assignment_order = "default"
  description      = ""
  name             = "default"
  org_moid         = local.org_moid
  prefix           = "000025B5-0000-0000"
  tags             = var.tags
  uuid_blocks      = {}
}

*/
