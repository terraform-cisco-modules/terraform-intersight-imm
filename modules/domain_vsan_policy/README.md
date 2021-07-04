# domain_vsan_policy - Intersight UCS Domain VSAN Group Policy Terraform Module

## Usage

```hcl
module "vsan_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_vsan_policy"

  # omitted...
}
```

This module will create a Domain VSAN Policy in Intersight.  This can be UCS Domain Profiles that require a Domain VSAN Policy.  

These resources are consumed

* [vsan_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fc_network_policy)

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
| [intersight_fabric_fc_network_policy.vsan_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fc_network_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_trunking"></a> [enable\_trunking](#input\_enable\_trunking) | Enable or Disable Trunking on all of configured FC uplink ports. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vsan_policy"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Domain VSAN Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
