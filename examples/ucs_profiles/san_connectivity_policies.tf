#____________________________________________________________
#
# Example Intersight SAN Connectivity Policy
# GUI Location: Policies > Create Policy > SAN Connectivity
#____________________________________________________________

#______________________________________________
#
# SAN Connectivity Example
#______________________________________________

module "san_connectivity" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/san_connectivity_policies"
  description         = "vHBA LAN Connectivity Example."
  name                = "example"
  static_wwnn_address = ""
  wwnn_pool           = [data.terraform_remote_state.pools.outputs.wwnn_pool.moid]
  org_moid            = local.org_moid
  profiles            = []
  tags                = var.tags
}


#______________________________________________
#
# vHBA Examples
#______________________________________________



/*

#______________________________________________
#
# SAN Connectivity with Default Values
#______________________________________________

module "san_connectivity_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/san_connectivity_policies"
  description         = ""
  name                = "san_connectivity"
  placement_mode      = "custom"
  static_wwnn_address = ""
  target_platform     = "FIAttached"
  wwnn_address_type   = "POOL"
  wwnn_pool           = []
  org_moid            = local.org_moid
  profiles            = []
  tags                = var.tags
}


#______________________________________________
#
# vHBA with Default Values
#______________________________________________

module "vhba_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                  = "terraform-cisco-modules/imm/intersight//modules/san_connectivity_add_vhba"
  persistent_lun_bindings = false
  placement_pci_link      = 0
  placement_slot_id       = "MLOM"
  placement_switch_id     = "None"
  placement_uplink        = 0
  san_connectivity_moid   = ""
  static_wwpn_address     = ""
  vhba_adapter_moid       = ** No Default, Required Field**
  vhba_network_moid       = ** No Default, Required Field**
  vhba_name               = "vhba"
  vhba_qos_moid           = ** No Default, Required Field**
  vhba_order              = 0
  vhba_type               = "fc-initiator"
  wwpn_address_type       = "POOL"
  wwpn_lease_moid         = []
  wwpn_pool_moid          = []
}

*/
