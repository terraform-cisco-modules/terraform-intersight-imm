#____________________________________________________________
#
# Example Intersight LAN Connectivity Policy
# GUI Location: Policies > Create Policy > LAN Connectivity
#____________________________________________________________

#______________________________________________
#
# LAN Connectivity Example
#______________________________________________

module "lan_connectivity_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/lan_connectivity_policies"
  description = "vNIC LAN Connectivity Example."
  name        = "example"
  org_moid    = local.org_moid
  profiles    = {}
  tags        = var.tags
}


#______________________________________________
#
# vNIC Examples
#______________________________________________



/*

#______________________________________________
#
# LAN Connectivity with Default Values
#______________________________________________

module "lan_connectivity_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/lan_connectivity_policies"
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
