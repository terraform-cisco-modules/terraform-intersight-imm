#__________________________________________________________________
#
# Intersight iSCSI Adapter Policy
# GUI Location: Policies > Create Policy > iSCSI Adapter
#__________________________________________________________________

resource "intersight_vnic_iscsi_adapter_policy" "iscsi_adapter" {
  connection_time_out  = var.tcp_connection_timeout
  description          = var.description
  dhcp_timeout         = var.dhcp_timeout
  lun_busy_retry_count = var.lun_busy_retry_count
  name                 = var.name
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
