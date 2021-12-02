#________________________________________________________________
#
# Example Intersight Ethernet Network Module (Standalone Servers)
# GUI Location: Policies > Create Policy > Ethernet Network
#________________________________________________________________

module "ethernet_network_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version       = ">=0.9.6"
  source        = "terraform-cisco-modules/imm/intersight//modules/ethernet_network_policies"
  allowed_vlans = "1-100"
  description   = "Ethernet Network Example."
  name          = "example"
  org_moid      = local.org_moid
  tags          = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "ethernet_network_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/ethernet_network_policies"
  allowed_vlans = ""
  default_vlan  = 1
  description   = ""
  mode          = "TRUNK"
  name          = "vnic_network"
  org_moid      = local.org_moid
  tags          = var.tags
}


*/
