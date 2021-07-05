#____________________________________________________________
#
# Example Intersight Ethernet (vNIC) Network Module (Standalone Servers)
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "vnic_network_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_network"
  allowed_vlans = "1-100"
  description   = "vNIC Network Example."
  name          = "example"
  org_moid      = local.org_moid
  tags          = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vnic_network_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source        = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_network"
  allowed_vlans = ""
  default_vlan  = 1
  description   = ""
  mode          = "TRUNK"
  name          = "vnic_network"
  org_moid      = local.org_moid
  tags          = var.tags
}


*/
