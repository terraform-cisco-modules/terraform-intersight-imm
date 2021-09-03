# fibre_channel_adapter_policies - Intersight Fibre Channel Adapter Policy Terraform Module

## Usage

```hcl
module "fibre_channel_adapter" {

  source = "terraform-cisco-modules/imm/intersight//modules/fibre_channel_adapter_policies"

  # omitted...
}
```

This module will create an Fibre Channel Adapter Policy in Intersight.  This can be used to create Profiles and Templates that require a Fibre Channel Adapter Policy.  

These resources are consumed

* [Fibre Channel Adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_adapter_policy)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [intersight_vnic_fc_adapter_policy.vhba_adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_adapter_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_fcp_error_recovery"></a> [enable\_fcp\_error\_recovery](#input\_enable\_fcp\_error\_recovery) | Enables Fibre Channel Error recovery. | `bool` | `false` | no |
| <a name="input_error_detection_timeout"></a> [error\_detection\_timeout](#input\_error\_detection\_timeout) | Error Detection Timeout, also referred to as EDTOV, is the number of milliseconds to wait before the system assumes that an error has occurred. | `number` | `2000` | no |
| <a name="input_error_recovery_io_retry_timeout"></a> [error\_recovery\_io\_retry\_timeout](#input\_error\_recovery\_io\_retry\_timeout) | The number of seconds the adapter waits before aborting the pending command and resending the same IO request. Range is 1-59. | `number` | `5` | no |
| <a name="input_error_recovery_link_down_timeout"></a> [error\_recovery\_link\_down\_timeout](#input\_error\_recovery\_link\_down\_timeout) | The number of milliseconds the port should actually be down before it is marked down and fabric connectivity is lost.  Range is 0-240000. | `number` | `30000` | no |
| <a name="input_error_recovery_port_down_io_retry"></a> [error\_recovery\_port\_down\_io\_retry](#input\_error\_recovery\_port\_down\_io\_retry) | The number of times an I/O request to a port is retried because the port is busy before the system decides the port is unavailable.  Range is 0-255. | `number` | `8` | no |
| <a name="input_error_recovery_port_down_timeout"></a> [error\_recovery\_port\_down\_timeout](#input\_error\_recovery\_port\_down\_timeout) | The number of milliseconds a remote Fibre Channel port should be offline before informing the SCSI upper layer that the port is unavailable. For a server with a VIC adapter running ESXi, the recommended value is 10000. For a server with a port used to boot a Windows OS from the SAN, the recommended value is 5000 milliseconds.  Range is 0-240000. | `number` | `10000` | no |
| <a name="input_flogi_retries"></a> [flogi\_retries](#input\_flogi\_retries) | The number of times that the system tries to log in to the fabric after the first failure.  A Value greater than 0. | `number` | `8` | no |
| <a name="input_flogi_timeout"></a> [flogi\_timeout](#input\_flogi\_timeout) | The number of milliseconds that the system waits before it tries to log in again.  Range is 1000-255000. | `number` | `4000` | no |
| <a name="input_interrupt_mode"></a> [interrupt\_mode](#input\_interrupt\_mode) | The preferred driver interrupt mode. This can be one of the following:<br>* INTx - Line-based interrupt (INTx) mechanism similar to the one used in Legacy systems.<br>* MSI - Message Signaled Interrupt (MSI) mechanism that treats messages as interrupts.<br>* MSIx - Message Signaled Interrupt (MSI) mechanism with the optional extension (MSIx).<br>MSIx is the recommended and default option. | `string` | `"MSIx"` | no |
| <a name="input_io_throttle_count"></a> [io\_throttle\_count](#input\_io\_throttle\_count) | The maximum number of data or control I/O operations that can be pending for the virtual interface at one time. If this value is exceeded, the additional I/O operations wait in the queue until the number of pending I/O operations decreases and the additional operations can be processed.  Range is 1-1024. | `number` | `512` | no |
| <a name="input_lun_queue_depth"></a> [lun\_queue\_depth](#input\_lun\_queue\_depth) | The number of commands that the HBA can send and receive in a single transmission per LUN.  Range is 1-254. | `number` | `20` | no |
| <a name="input_max_luns_per_target"></a> [max\_luns\_per\_target](#input\_max\_luns\_per\_target) | The maximum number of LUNs that the Fibre Channel driver will export or show. The maximum number of LUNs is usually controlled by the operating system running on the server.  Rnage is 1-1024. | `number` | `1024` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vhba_adapter"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_plogi_retries"></a> [plogi\_retries](#input\_plogi\_retries) | The number of times that the system tries to log in to a port after the first failure.  Range is 0-255. | `number` | `8` | no |
| <a name="input_plogi_timeout"></a> [plogi\_timeout](#input\_plogi\_timeout) | The number of milliseconds that the system waits before it tries to log in again.  Range is 1000-255000. | `number` | `20000` | no |
| <a name="input_receive_ring_size"></a> [receive\_ring\_size](#input\_receive\_ring\_size) | The number of descriptors in each queue.  Range is 64-2048. | `number` | `64` | no |
| <a name="input_resource_allocation_timeout"></a> [resource\_allocation\_timeout](#input\_resource\_allocation\_timeout) | Resource Allocation Timeout, also referred to as RATOV, is the number of milliseconds to wait before the system assumes that a resource cannot be properly allocated.  Range is 5000-100000. | `number` | `10000` | no |
| <a name="input_scsi_io_queue_count"></a> [scsi\_io\_queue\_count](#input\_scsi\_io\_queue\_count) | The number of SCSI I/O queue resources the system should allocate.  Range is 1-245. | `number` | `1` | no |
| <a name="input_scsi_io_ring_size"></a> [scsi\_io\_ring\_size](#input\_scsi\_io\_ring\_size) | The number of descriptors in each SCSI I/O queue.  Range is 64-512. | `number` | `512` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_transmit_ring_size"></a> [transmit\_ring\_size](#input\_transmit\_ring\_size) | The number of descriptors in each queue.  Range is 64-2048. | `number` | `64` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Fibre Channel Adapter Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
