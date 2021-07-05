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

variable "fabric_vnics" {
  default = {
    vNIC_1 = {
      mac_pool   = "60d76a896962752d31ac8c2c"
      switch_id  = "A"
      vlan_group = "60e205a56f62692d3009521f"
      vnic_name  = "vNIC-1"
      vnic_order = 0
    },
    vNIC_2 = {
      mac_pool   = "60d76a896962752d31ac8c4a"
      switch_id  = "B"
      vlan_group = "60e205a56f62692d3009521f"
      vnic_name  = "vNIC-2"
      vnic_order = 1
    },
    vNIC_3 = {
      mac_pool   = "60d76a896962752d31ac8c2c"
      switch_id  = "A"
      vlan_group = "60e205a56f62692d3009521f"
      vnic_name  = "vNIC-3"
      vnic_order = 2
    },
    vNIC_4 = {
      mac_pool   = "60d76a896962752d31ac8c4a"
      switch_id  = "B"
      vlan_group = "60e205a56f62692d3009521f"
      vnic_name  = "vNIC-4"
      vnic_order = 3
    },
    vNIC_5 = {
      mac_pool   = "60d76a896962752d31ac8c2c"
      switch_id  = "A"
      vlan_group = "60e205a56f62692d3009521f"
      vnic_name  = "vNIC-5"
      vnic_order = 4
    },
    vNIC_6 = {
      mac_pool   = "60d76a896962752d31ac8c4a"
      pci_order  = 5
      switch_id  = "B"
      vlan_group = "60e205a56f62692d3009521f"
      vnic_name  = "vNIC-6"
      vnic_order = 5
    },
  }
}

module "vnic" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.lan_connectivity_example,
    module.vnic_adapter_example,
    module.lldp_example,
    module.vlan_group_list,
    module.domain_vnic_qos.moid
  ]
  for_each                = var.fabric_vnics
  source                  = "terraform-cisco-modules/imm/intersight//modules/policies_vnic"
  cdn_name                = each.value.vnic_name
  cdn_source              = "vnic"
  lan_connectivity_moid   = module.lan_connectivity_example.moid
  mac_address_type        = "POOL"
  mac_pool_moid           = [each.value.mac_pool]
  placement_pci_link      = 0
  placement_uplink        = 0
  placement_slot_id       = "MLOM"
  placement_switch_id     = each.value.switch_id
  vnic_adapter_moid       = module.vnic_adapter_example.moid
  vnic_control_moid       = module.lldp_example.moid
  vnic_name               = each.value.vnic_name
  vnic_network_group_moid = each.value.vlan_group
  vnic_order              = each.value.vnic_order
  vnic_qos_moid           = module.domain_vnic_qos.moid
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
  sp_nics_moid              = []
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
