#____________________________________________________________
#
# Example Intersight Ethernet (vHBA) SAN Connectivity Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

#______________________________________________
#
# SAN Connectivity Example
#______________________________________________

module "san_connectivity" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_san_connectivity"
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

module "vhba_loop" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.san_connectivity,
    module.vhba_adapter_example,
    module.vhba_network_example_a,
    module.vhba_network_example_b,
    module.vhba_qos_example_1
  ]
  source = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_loop"
  fabric_vhba = {
    vHBA_1 = {
      wwpn_pool  = data.terraform_remote_state.pools.outputs.wwpn_pool_a.moid
      switch_id  = "A"
      network    = module.vhba_network_example_a.moid
      vhba_name  = "vHBA-1"
      vhba_order = 6
    },
    vHBA_2 = {
      wwpn_pool  = data.terraform_remote_state.pools.outputs.wwpn_pool_b.moid
      switch_id  = "B"
      network    = module.vhba_network_example_b.moid
      vhba_name  = "vHBA-2"
      vhba_order = 7
    },
  }
  placement_pci_link    = 0
  placement_slot_id     = "MLOM"
  placement_uplink      = 0
  san_connectivity_moid = module.san_connectivity.moid
  static_wwpn_address   = ""
  vhba_adapter_moid     = module.vhba_adapter_example.moid
  vhba_qos_moid         = module.vhba_qos_example_1.moid
  vhba_type             = "fc-initiator"
  wwpn_address_type     = "POOL"
  wwpn_lease_moid       = []
}


/*

#______________________________________________
#
# SAN Connectivity with Default Values
#______________________________________________

module "san_connectivity_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_san_connectivity"
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
  source                  = "terraform-cisco-modules/imm/intersight//modules/policies_vhba"
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
