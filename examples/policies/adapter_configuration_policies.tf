#______________________________________________________________________
#
# Example Intersight Adapter Configuration Module (Standalone Servers)
# GUI Location: Policies > Create Policy > Adapter Configuration
#______________________________________________________________________

module "adapter_configuration_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version             = ">=0.9.6"
  source              = "terraform-cisco-modules/imm/intersight//modules/adapter_configuration_policies"
  description         = "Adapter Configuration Example."
  name                = "example"
  org_moid            = local.org_moid
  portchannel_enabled = true
  profiles            = {}
  tags                = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "adapter_configuration_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "../..//modules/adapter_configuration_policies"
  description         = ""
  fip_enabled         = true
  int0_fec_mode       = "cl91"
  int1_fec_mode       = "cl91"
  int2_fec_mode       = "cl91"
  int3_fec_mode       = "cl91"
  lldp_enabled        = true
  name                = "vic_adapter"
  org_moid            = local.org_moid
  portchannel_enabled = true
  profiles            = {}
  slot_id             = "MLOM"
  tags                = var.tags
}

*/
