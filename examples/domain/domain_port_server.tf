#____________________________________________________________
#
# Example Intersight Server Port Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "server_port_example_a1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_a
  ]
  source         = "../../modules/domain_port_server"
  port_list      = [5, 6, 7, 8, 9, 10, 11, 12]
  port_list_type = "list"
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  slot_id = var.slot_id
  tags    = var.tags
}

module "server_port_example_a2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_a
  ]
  source         = "../../modules/domain_port_server"
  port_list_type = "range"
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  port_start = 13
  port_stop  = 18
  slot_id    = 1
  tags       = var.tags
}

module "server_port_example_b1" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_b
  ]
  source         = "../../modules/domain_port_server"
  port_list      = [5, 6, 7, 8, 9, 10, 11, 12]
  port_list_type = "list"
  port_policy_moid = [
    {
      moid = module.port_policy_example_b.moid
    }
  ]
  slot_id = var.slot_id
  tags    = var.tags
}

module "server_port_example_b2" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_b
  ]
  source         = "../../modules/domain_port_server"
  port_list_type = "range"
  port_policy_moid = [
    {
      moid = module.port_policy_example_b.moid
    }
  ]
  port_start = 13
  port_stop  = 18
  slot_id    = 1
  tags       = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "server_port_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source            = "../../modules/domain_port_server"
  port_list         = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
  port_list_type    = "list"
  port_policy_moid  = ""
  port_start        = 5
  port_stop         = 18
  slot_id           = 1
  tags              = var.tags
}

*/
