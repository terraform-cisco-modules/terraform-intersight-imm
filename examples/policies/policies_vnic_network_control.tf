#____________________________________________________________
#
# Example Intersight Ethernet (vNIC) Network Control Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "cdp_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "../../modules/policies_vnic_network_control"
  cdp_enabled           = true
  description           = "vNIC Network Control Policy Example - CDP Eanbled."
  mac_registration_mode = "allVlans"
  name                  = "cdp_example"
  org_moid              = local.org_moid
  tags                  = var.tags
}

module "lldp_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "../../modules/policies_vnic_network_control"
  description           = "vNIC Network Control Policy Example - LLDP Enabled."
  mac_registration_mode = "allVlans"
  lldp_receive          = true
  lldp_transmit         = true
  name                  = "lldp_example"
  org_moid              = local.org_moid
  tags                  = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

The Example Below shows all of the default options.  This is shown as an example to show options to change these settings

module "vnic_network_control_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                  = "../../modules/policies_vnic_network_control"
  cdp_enabled           = false
  description           = "vNIC Network Control Policy Example."
  forge_mac             = "allow"
  mac_registration_mode = "nativeVlanOnly"
  lldp_receive          = false
  lldp_transmit         = false
  name                  = "vnic_network_control"
  uplink_fail_action    = "linkDown"
  org_moid              = local.org_moid
  tags                  = var.tags
}

*/
