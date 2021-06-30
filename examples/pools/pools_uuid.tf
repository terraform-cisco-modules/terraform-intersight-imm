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
  source           = "../../modules/pools_uuid"
  assignment_order = "sequential"
  description      = "Example UUID Pool."
  name             = "uuid_pool"
  org_moid         = local.org_moid
  tags             = var.tags
  uuid_suffix_blocks = [
    {
      from = "e456-1234e89b42aa"
      size = 32768
    }
  ]
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
  source              = "../../modules/pools_uuid"
  assignment_order    = "default"
  description         = ""
  name                = "default"
  org_moid            = local.org_moid
  prefix              = "123e4567-e89b-42d3"
  tags                = var.tags
  uuid_suffix_blocks  = []
}

*/
