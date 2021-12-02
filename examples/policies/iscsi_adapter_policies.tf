#____________________________________________________________
#
# Example Intersight iSCSI Adapter Policy
# GUI Location: Policies > Create Policy > iSCSI Adapter
#____________________________________________________________

module "iscsi_adapter_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/iscsi_adapter_policies"
  description = "vNIC iSCSI Adapter Example."
  name        = "example"
  org_moid    = local.org_moid
  tags        = var.tags
}


#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

The Example Below shows all of the default options.  This is shown as an example to show options to change these settings

module "iscsi_adapter_defaults" {
  depends_on        = [
    data.intersight_organization_organization.org_moid
  ]
  source                = "terraform-cisco-modules/imm/intersight//modules/iscsi_adapter_policies"
  connection_time_out   = 15
  description           = ""
  dhcp_timeout          = 60
  lun_busy_retry_count  = 15
  name                  = "vnic_iscsi_adapter"
  org_moid              = local.org_moid
  tags                  = var.tags
}

*/
