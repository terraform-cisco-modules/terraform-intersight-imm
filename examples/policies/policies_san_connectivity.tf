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

variable "fabric_vhbas" {
  default = {
    vHBA_1 = {
      wwpn_pool  = "60d76a896962752d31ac8c3d"
      switch_id  = "A"
      network    = "60e252559da7b5d569a9fa92"
      vhba_name  = "vHBA-1"
      vhba_order = 6
    },
    vHBA_2 = {
      wwpn_pool  = "60d76a886962752d31ac8c20"
      switch_id  = "B"
      network    = "60e252549da7b5d569a9fa7e"
      vhba_name  = "vHBA-2"
      vhba_order = 7
    },
  }
}

module "vhba" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.san_connectivity,
    module.vhba_adapter_example,
    module.vhba_network_example_a,
    module.vhba_network_example_b,
    module.vhba_qos_example_1
  ]
  for_each              = var.fabric_vhbas
  source                = "terraform-cisco-modules/imm/intersight//modules/policies_vhba"
  placement_pci_link    = 0
  placement_slot_id     = "MLOM"
  placement_switch_id   = each.value.switch_id
  placement_uplink      = 0
  san_connectivity_moid = module.san_connectivity.moid
  static_wwpn_address   = ""
  vhba_adapter_moid     = module.vhba_adapter_example.moid
  vhba_network_moid     = each.value.network
  vhba_name             = each.value.vhba_name
  vhba_qos_moid         = module.vhba_qos_example_1.moid
  vhba_order            = each.value.vhba_order
  vhba_type             = "fc-initiator"
  wwpn_address_type     = "POOL"
  wwpn_lease_moid       = []
  wwpn_pool_moid        = [each.value.wwpn_pool]
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
