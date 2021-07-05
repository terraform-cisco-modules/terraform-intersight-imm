#____________________________________________________________
#
# Example Intersight Ethernet (vNIC) LAN Connectivity Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

#______________________________________________
#
# LAN Connectivity Example
#______________________________________________

module "lan_connectivity_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_lan_connectivity"
  description = "vNIC LAN Connectivity Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = []
  tags        = var.tags
}


#______________________________________________
#
# vNIC Examples
#______________________________________________

module "vnic_loop" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.lan_connectivity_example,
    module.vnic_adapter_example,
    module.lldp_example,
    module.vlan_group_list,
    module.domain_vnic_qos.moid
  ]
  source     = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_loop"
  cdn_source = "vnic"
  fabric_vnic = {
    vNIC_1 = {
      mac_pool   = data.terraform_remote_state.pools.outputs.mac_pool_a.moid
      switch_id  = "A"
      vlan_group = module.vlan_group_list.moid
      vnic_name  = "vNIC-1"
      vnic_order = 0
    },
    vNIC_2 = {
      mac_pool   = data.terraform_remote_state.pools.outputs.mac_pool_b.moid
      switch_id  = "B"
      vlan_group = module.vlan_group_list.moid
      vnic_name  = "vNIC-2"
      vnic_order = 1
    },
    vNIC_3 = {
      mac_pool   = data.terraform_remote_state.pools.outputs.mac_pool_a.moid
      switch_id  = "A"
      vlan_group = module.vlan_group_list.moid
      vnic_name  = "vNIC-3"
      vnic_order = 2
    },
    vNIC_4 = {
      mac_pool   = data.terraform_remote_state.pools.outputs.mac_pool_b.moid
      switch_id  = "B"
      vlan_group = module.vlan_group_list.moid
      vnic_name  = "vNIC-4"
      vnic_order = 3
    },
    vNIC_5 = {
      mac_pool   = data.terraform_remote_state.pools.outputs.mac_pool_a.moid
      switch_id  = "A"
      vlan_group = module.vlan_group_list.moid
      vnic_name  = "vNIC-5"
      vnic_order = 4
    },
    vNIC_6 = {
      mac_pool   = data.terraform_remote_state.pools.outputs.mac_pool_b.moid
      pci_order  = 5
      switch_id  = "B"
      vlan_group = module.vlan_group_list.moid
      vnic_name  = "vNIC-6"
      vnic_order = 5
    }
  }
  lan_connectivity_moid = module.lan_connectivity_example.moid
  mac_address_type      = "POOL"
  placement_pci_link    = 0
  placement_uplink      = 0
  placement_slot_id     = "MLOM"
  vnic_adapter_moid     = module.vnic_adapter_example.moid
  vnic_control_moid     = module.lldp_example.moid
  vnic_qos_moid         = module.domain_vnic_qos.moid
}


/*

#______________________________________________
#
# LAN Connectivity with Default Values
#______________________________________________

module "lan_connectivity_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_lan_connectivity"
  description         = ""
  iqn_allocation_type = "None"
  iqn_pool            = []
  iqn_static_name     = ""
  name                = "lan_connectivity"
  org_moid            = local.org_moid
  placement_mode      = "custom"
  profiles            = []
  target_platform     = "FIAttached"
}


#______________________________________________
#
# vNIC with Default Values
#______________________________________________

module "vnic_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                    = "terraform-cisco-modules/imm/intersight//modules/policies_vnic"
  cdn_name                  = ""    # Consistent Device Naming Section
  cdn_source                = "vnic"
  failover_enabled          = false
  ip_lease_moid             = []
  iscsi_boot_policy_moid    = []
  lan_connectivity_moid     = ""
  mac_address_type          = "POOL"
  mac_lease_moid            = []
  mac_pool_moid             = []
  placement_pci_link        = 0
  placement_slot_id         = "MLOM"
  placement_switch_id       = "None"
  placement_uplink          = 0
  static_mac_address        = ""
  usnic_cos                 = 5
  usnic_count               = 0
  usnic_adapter_policy_moid = ""
  vmq_enabled               = false
  vmq_interrupts            = 16
  vmq_multi_queue_support   = false
  vmq_number_queues         = 4
  vmq_number_sub_vnics      = 64
  vmq_adapter_policy_moid   = ""
  vnic_adapter_moid         = ** No Default, Required Field**
  vnic_control_moid         = ** No Default, Required Field**
  vnic_name                 = "vnic"
  vnic_network_moid         = ""
  vnic_network_group_moid   = ** No Default, Required Field**
  vnic_order                = 0
  vnic_qos_moid             = ** No Default, Required Field**
}

*/
