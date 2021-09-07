# iscsi_adapter_policies - Intersight iSCSI Adapter Policy Terraform Module

## Usage

```hcl
module "iscsi_adapter" {

  source = "terraform-cisco-modules/imm/intersight//modules/iscsi_adapter_policies"

  # omitted...
}
```

This module will create an iSCSI Adapter Policy in Intersight.  This can be used to create Profiles and Templates that require an iSCSI Adapter Policy.  

These resources are consumed

* [iSCSI Adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_adapter_policy)

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
| [intersight_vnic_iscsi_adapter_policy.iscsi_adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_iscsi_adapter_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_dhcp_timeout"></a> [dhcp\_timeout](#input\_dhcp\_timeout) | The number of seconds to wait before the initiator assumes that the DHCP server is unavailable.  Range is 60-300. | `number` | `60` | no |
| <a name="input_lun_busy_retry_count"></a> [lun\_busy\_retry\_count](#input\_lun\_busy\_retry\_count) | The number of times to retry the connection in case of a failure during iSCSI LUN discovery.  Range is 0-60. | `number` | `15` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_iscsi_adapter"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_tcp_connection_timeout"></a> [tcp\_connection\_timeout](#input\_tcp\_connection\_timeout) | The number of seconds to wait until Cisco UCS assumes that the initial login has failed and the iSCSI adapter is unavailable.  Range is 0-255. | `number` | `15` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | iSCSI Adapter Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
