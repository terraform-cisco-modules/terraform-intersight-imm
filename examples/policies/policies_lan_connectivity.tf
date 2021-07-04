#____________________________________________________________
#
# Example Intersight Ethernet (vNIC) LAN Connectivity Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "lan_connectivity_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_lan_connectivity"
  description = "vNIC LAN Connectivity Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = []
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

The Example Below shows all of the default options.  This is shown as an example to show options to change these settings

module "lan_connectivity_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_lan_connectivity"
  description         = "vNIC LAN Connectivity Example."
  iqn_allocation_type = "None"
  iqn_pool            = []
  iqn_static_name     = ""
  name                = "lan_connectivity"
  org_moid            = local.org_moid
  placement_mode      = "custom"
  profiles            = []
  target_platform     = "FIAttached"
}

*/
