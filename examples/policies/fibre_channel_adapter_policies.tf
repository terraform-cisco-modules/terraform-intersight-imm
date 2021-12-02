#________________________________________________________________
#
# Example Intersight Fibre Channel Adapter Module
# GUI Location: Policies > Create Policy > Fibre Channel Adapter
#________________________________________________________________

module "vhba_adapter_example" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  version     = ">=0.9.6"
  source      = "terraform-cisco-modules/imm/intersight//modules/fibre_channel_adapter_policies"
  description = "vHBA Adapter Policy Example."
  name        = "vhba_adapter"
  org_moid    = local.org_moid
  tags        = var.tags
}

#______________________________________________
#
# Example with Default Values
#______________________________________________

/*

module "vhba_adapter_defaults" {
  depends_on = [
    data.intersight_organization_organization.org_moid
  ]
  source                           = "terraform-cisco-modules/imm/intersight//modules/fibre_channel_adapter_policies"
  description                      = ""
  error_detection_timeout          = 20000
  error_recovery_enabled           = false
  error_recovery_io_retry_count    = 8
  error_recovery_io_retry_timeout  = 5
  error_recovery_link_down_timeout = 30000
  error_recovery_port_down_timeout = 10000
  flogi_retries                    = 8
  flogi_timeout                    = 4000
  interrupt_mode                   = "MSIx"
  io_throttle_count                = 512
  lun_count                        = 1024
  lun_queue_depth                  = 20
  name                             = "vhba_adapter"
  plogi_retries                    = 8
  plogi_timeout                    = 20000
  org_moid                         = local.org_moid
  resource_allocation_timeout      = 10000
  rx_ring_size                     = 64
  scsi_io_queues                   = 1
  scsi_io_ring_size                = 512
  tags                             = var.tags
  tx_ring_size                     = 64
}

*/
