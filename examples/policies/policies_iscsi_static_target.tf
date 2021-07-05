#____________________________________________________________
#
# Example Intersight (vNIC) iSCSI Static Target Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

module "iscsi_target_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_iscsi_target"
  description = "vNIC iSCSI Target Example."
  ip_address  = "198.18.0.1"
  name        = "example"
  port        = 3260
  target_name = "iqn.1992-08.com.ci:sn.e461ee9f190611ebb06300a0985b4a87:vs.3"
  lun = [
    {
      additional_properties = null
      bootable              = true
      lun_id                = 0
    }
  ]
  org_moid = local.org_moid
  tags     = var.tags
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
  source      = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_iscsi_target"
  description = ""
  ip_address  = ""
  name        = "vnic_iscsi_target"
  port        = 0
  target_name = ""
  lun         = []
  org_moid    = local.org_moid
  tags        = var.tags
}

*/
