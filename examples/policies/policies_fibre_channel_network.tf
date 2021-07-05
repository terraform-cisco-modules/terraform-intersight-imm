#____________________________________________________________
#
# Example Intersight Fibre Channel (vHBA) Network Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

# Fabric Interconnect Attached Example
module "vhba_network_example_a" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_network"
  vsan_id     = 100
  description = "vHBA Network Policy Fabric A Example."
  name        = "example_a"
  org_moid    = local.org_moid
  tags        = var.tags
}

module "vhba_network_example_b" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_network"
  vsan_id     = 200
  description = "vHBA Network Policy Fabric B Example."
  name        = "example_b"
  org_moid    = local.org_moid
  tags        = var.tags
}

# Standalone Example
module "vhba_network_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_network"
  default_vlan_id = 100
  vsan_id         = 100
  description     = "vHBA Network Policy Example."
  name            = "example_2"
  org_moid        = local.org_moid
  tags            = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vhba_network_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source          = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_network"
  default_vlan_id = 0
  vsan_id         = **no default, required_attribute**
  description     = ""
  name            = "vhba_network"
  org_moid        = local.org_moid
  tags            = var.tags
}

*/
