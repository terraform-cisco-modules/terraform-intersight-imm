#____________________________________________________________
#
# Example Intersight (vNIC) iSCSI Static Target Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "iscsi_boot_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid,
    module.iscsi_adapter_example,
    module.iscsi_target_example,
  ]
  source                  = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_iscsi_boot"
  auto_targetvendor_name  = ""
  description             = "vNIC iSCSI Boot Example."
  initiator_ip_pool       = [data.terraform_remote_state.pools.outputs.ip_pool_1.moid]
  initiator_ip_source     = "Pool"
  iscsi_adapter_policy    = [module.iscsi_adapter_example.moid]
  name                    = "iscsi_boot"
  primary_target_policy   = [module.iscsi_target_example.moid]
  secondary_target_policy = []
  target_source_type      = "Static"
  org_moid                = local.org_moid
  tags                    = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

The Example Below shows all of the default options.  This is shown as an example to show options to change these settings

module "iscsi_target_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                         = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_iscsi_boot"
  auto_targetvendor_name         = ""
  chap_password                  = ""
  chap_user_id                   = ""
  description                    = "vNIC iSCSI Boot Example."
  initiator_ip_pool              = []
  initiator_ip_source            = "Pool"
  initiator_static_ip            = ""
  initiator_static_gateway       = ""
  initiator_static_netmask       = ""
  initiator_static_primary_dns   = ""
  initiator_static_secondary_dns = ""
  iscsi_adapter_policy           = []
  mschap_password                = ""
  mschap_user_id                 = ""
  name                           = "iscsi_boot"
  primary_target_policy          = []
  secondary_target_policy        = []
  target_source_type             = "Auto"
  org_moid                       = local.org_moid
  tags                           = var.tags
}

*/
