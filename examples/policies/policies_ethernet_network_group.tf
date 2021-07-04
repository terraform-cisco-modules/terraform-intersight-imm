#____________________________________________________________
#
# Example Intersight Ethernet vNIC Adapter Policy Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

#________________________________________________
#
# Example VLAN Group using a Range of VLANs
#________________________________________________



module "vlan_group_range" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_network_group"
  description = "Example VLAN Group using Range."
  name        = "vlan_group_range"
  org_moid    = local.org_moid
  tags        = var.tags
  native_vlan = 1
  # The Range Below would add VLANs 1 thru 100.
  list_type  = "range"
  vlan_start = 1
  vlan_stop  = 101
}

#________________________________________________
#
# Example VLAN Group using a List of VLANs
#________________________________________________

module "vlan_group_list" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_network_group"
  description = "Example VLAN Group using Range."
  name        = "vlan_group_list"
  org_moid    = local.org_moid
  tags        = var.tags
  native_vlan = 1
  # The List Below would add VLANs as Defined.
  list_type = "list"
  vlan_list = [1, "15-20", 20, 25, 30, 100]
}
