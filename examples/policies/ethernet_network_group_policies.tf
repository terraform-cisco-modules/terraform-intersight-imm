#_________________________________________________________________
#
# Example Intersight Ethernet Network Group Policy Module
# GUI Location: Policies > Create Policy > Ethernet Network Group
#_________________________________________________________________

#________________________________________________
#
# Example VLAN Group using a Range of VLANs
#________________________________________________



module "vlan_group" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/ethernet_network_group_policies"
  description = "Example VLAN Group using Range."
  name        = "vlan_group"
  org_moid    = local.org_moid
  tags        = var.tags
  native_vlan = 1
  vlan_list   = "1-100"
}

#________________________________________________
#
# Example VLAN Group using a List of VLANs
#________________________________________________

module "vlan_group_list" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/ethernet_network_group_policies"
  description = "Example VLAN Group using Range."
  name        = "vlan_group_list"
  org_moid    = local.org_moid
  tags        = var.tags
  native_vlan = 1
  vlan_list   = "1,15-20,20,25,30,100"
}
