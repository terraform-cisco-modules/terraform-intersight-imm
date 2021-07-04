# policies_boot_order - Intersight Boot Order Policy Terraform Module

## Usage

```hcl
module "boot_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_boot_order"

  # omitted...
}
```

This module will create a Boot Order Policy in Intersight.  This can be used to create Service Profiles and Templates that require a Boot Order Policy.  

These resources are consumed

* [boot_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/boot_precision_policy)

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
| [intersight_boot_precision_policy.boot](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/boot_precision_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_devices"></a> [boot\_devices](#input\_boot\_devices) | List of Boot Devices to Assign to the Boot Policy. | `list(map(any))` | `[]` | no |
| <a name="input_boot_mode"></a> [boot\_mode](#input\_boot\_mode) | Boot Mode, optiona are {Legacy\|Uefi}. | `string` | `"Uefi"` | no |
| <a name="input_boot_secure"></a> [boot\_secure](#input\_boot\_secure) | Flag to Enforce Uefi Secure Boot Mode.  If Boot mode is legacy this should always be false. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"boot"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Boot Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
