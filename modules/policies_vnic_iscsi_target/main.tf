#____________________________________________________________
#
# Intersight Ethernet (vNIC) iSCSI Target Policy
# GUI Location: Policies > Create Policy
#____________________________________________________________

resource "intersight_vnic_iscsi_static_target_policy" "vnic_iscsi_target" {
  description = var.description
  ip_address  = var.ip_address
  name        = var.name
  port        = var.port
  target_name = var.target_name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "lun" {
    for_each = var.lun
    content {
      additional_properties = lun.value.additional_properties
      bootable              = lun.value.bootable
      lun_id                = lun.value.lun_id
      object_type           = "vnic.Lun"
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
