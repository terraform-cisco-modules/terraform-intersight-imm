#____________________________________________________________
#
# Example Intersight UCS Domain Switch Cluster Module
# GUI Location: Profiles > UCS Domain Profile > Create UCS Domain Profile
#____________________________________________________________

module "switch_cluster_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "../../modules/domain_profile_cluster"
  description = "UCS Domain Cluster Example."
  name        = "example"
  domain_type = "instance"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "switch_control_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "../../modules/domain_profile_cluster"
  description           = ""
  name                  = "switch_control"
  mac_aging_option      = "Default"
  mac_aging_time        = 120
  udld_message_interval = 15
  udld_recovery_action  = "none"
  vlan_optimization     = false
  org_moid              = local.org_moid
  profiles              = var.profiles
  tags                  = var.tags
}

*/
