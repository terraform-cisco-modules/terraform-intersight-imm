#__________________________________________________________________
#
# Intersight Fibre Channel Adapter Policy
# GUI Location: Policies > Create Policy > Fibre Channel Adapter
#__________________________________________________________________

resource "intersight_vnic_fc_adapter_policy" "vhba_adapter" {
  description                 = var.description
  error_detection_timeout     = var.error_detection_timeout
  io_throttle_count           = var.io_throttle_count
  lun_count                   = var.max_luns_per_target
  lun_queue_depth             = var.lun_queue_depth
  name                        = var.name
  resource_allocation_timeout = var.resource_allocation_timeout
  error_recovery_settings {
    enabled           = var.enable_fcp_error_recovery
    io_retry_count    = var.error_recovery_port_down_io_retry
    io_retry_timeout  = var.error_recovery_io_retry_timeout
    link_down_timeout = var.error_recovery_link_down_timeout
    port_down_timeout = var.error_recovery_port_down_timeout
  }
  flogi_settings {
    retries = var.flogi_retries
    timeout = var.flogi_timeout
  }
  interrupt_settings {
    mode = var.interrupt_mode
  }
  organization {
    moid        = var.org_moid
    object_type = "organization.Organization"
  }
  plogi_settings {
    retries = var.plogi_retries
    timeout = var.plogi_timeout
  }
  rx_queue_settings {
    nr_count  = 1
    ring_size = var.receive_ring_size
  }
  scsi_queue_settings {
    nr_count  = var.scsi_io_queue_count
    ring_size = var.scsi_io_ring_size
  }
  tx_queue_settings {
    nr_count  = 1
    ring_size = var.transmit_ring_size
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
