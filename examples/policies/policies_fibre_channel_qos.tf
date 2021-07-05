#____________________________________________________________
#
# Example Intersight Fibre Channel (vHBA) QoS Module
# GUI Location: Policies > Create Policy
#____________________________________________________________

# Fabric Interconnect Attached Example
module "vhba_qos_example_1" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_qos"
  description = "FI Attached vHBA QoS Example"
  name        = "example_1"
  org_moid    = local.org_moid
  tags        = var.tags
}

# Standalone Example
module "vhba_qos_example_2" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_qos"
  description = "Standalone vHBA QoS Example"
  name        = "example_2"
  org_moid    = local.org_moid
  tags        = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vhba_qos_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source              = "terraform-cisco-modules/imm/intersight//modules/policies_vhba_qos"
  burst               = 1024        # FI-Attached
  cos                 = 3           # Standalone
  description         = ""
  name                = "vhba_qos"
  max_data_field_size = 2112        # FI-Attached and Standalone
  rate_limit          = 0           # FI-Attached and Standalone
  org_moid            = local.org_moid
  tags                = var.tags
}

*/
