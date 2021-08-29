# fibre_channel_qos_policies - Intersight Fibre Channel Qos Policy Terraform Module

## Usage

```hcl
module "fibre_channel_qos" {

  source = "terraform-cisco-modules/imm/intersight//modules/fibre_channel_qos_policies"

  # omitted...
}
```

This module will create an Fibre Channel Qos Policy in Intersight.  This can be used to create Profiles and Templates that require a Fibre Channel Qos Policy.  

These resources are consumed

* [Fibre Channel QoS](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_qos_policy)

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
| [intersight_vnic_fc_qos_policy.vhba_qos](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_qos_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_burst"></a> [burst](#input\_burst) | The burst traffic, in bytes, allowed on the vHBA.  Value can be between 1024-1000000. | `number` | `1024` | no |
| <a name="input_cos"></a> [cos](#input\_cos) | Class of Service to be associated to the traffic on the virtual interface.  Value can be between 0-6. | `number` | `3` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_max_data_field_size"></a> [max\_data\_field\_size](#input\_max\_data\_field\_size) | The maximum size of the Fibre Channel frame payload bytes that the virtual interface supports. | `number` | `2112` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vhba_qos"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | The value in Mbps (0-10G/40G/100G depending on Adapter Model) to use for limiting the data rate on the virtual interface. Setting this to zero will turn rate limiting off.  Range is between 0-100000. | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Fibre Channel Qos Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
