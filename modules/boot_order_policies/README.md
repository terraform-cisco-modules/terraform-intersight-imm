# boot_order_policies - Intersight Boot Order Policy Terraform Module

## Usage

```hcl
module "boot_order" {

  source = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"

  # omitted...
}
```

This module will create a Boot Order Policy in Intersight.  This can be used to create Service Profiles and Templates that require a Boot Order Policy.  

These resources are consumed

* [Boot Order](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/boot_precision_policy)

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
| [intersight_boot_precision_policy.boot_order](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/boot_precision_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_devices"></a> [boot\_devices](#input\_boot\_devices) | List of Boot Devices to Assign to the Boot Policy. | `list(map(any))` | `[]` | no |
| <a name="input_boot_mode"></a> [boot\_mode](#input\_boot\_mode) | Boot Mode, optiona are {Legacy\|Uefi}. | `string` | `"Uefi"` | no |
| <a name="input_boot_secure"></a> [boot\_secure](#input\_boot\_secure) | Flag to Enforce Uefi Secure Boot Mode.  If Boot mode is legacy this should always be false. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"boot"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Boot Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
