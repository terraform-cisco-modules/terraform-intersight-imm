#____________________________________________________________
#
# Example Intersight Port Mode Policies Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "port_mode_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_a
  ]
  source        = "../../modules/domain_port_mode"
  custom_mode   = "FibreChannel"
  port_id_end   = 4
  port_id_start = 1
  port_policy_moid = [
    {
      moid = module.port_policy_example_a.moid
    }
  ]
  slot_id = 1
  tags    = var.tags
}

module "port_mode_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.port_policy_example_b
  ]
  source        = "../../modules/domain_port_mode"
  custom_mode   = "FibreChannel"
  port_id_end   = 4
  port_id_start = 1
  port_policy_moid = [
    {
      moid = module.port_policy_example_b.moid
    }
  ]
  slot_id = 1
  tags    = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "port_mode_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source            = "../../modules/domain_port_mode"
  custom_mode       = FibreChannel
  port_id_end       = 4
  port_id_start     = 1
  port_policy_moid  = ""
  slot_id           = 1
  tags              = var.tags
}

*/
