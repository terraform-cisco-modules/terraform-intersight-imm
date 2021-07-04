# policies_persistent_memory - Intersight Persistent Memory Policy Terraform Module

## Usage

```hcl
module "persistent_memory" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_persistent_memory"

  # omitted...
}
```

This module will create a Persistent Memory Policy in Intersight.  This can be used to create Profiles and Templates that require a Persistent Memory Policy.  

These resources are consumed

* [persistent_memory](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/memory_persistent_memory_policy)

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
| [intersight_memory_persistent_memory_policy.persistent_memory](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/memory_persistent_memory_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_goals_memory_percentage"></a> [goals\_memory\_percentage](#input\_goals\_memory\_percentage) | Volatile memory percentage.  Range is 0-100. | `number` | `0` | no |
| <a name="input_goals_persistent_memory_type"></a> [goals\_persistent\_memory\_type](#input\_goals\_persistent\_memory\_type) | Type of the Persistent Memory configuration where the Persistent Memory Modules are combined in an interleaved set or not.<br> * app-direct - The App Direct interleaved Persistent Memory type.<br> * app-direct-non-interleaved - The App Direct non-interleaved Persistent Memory type. | `string` | `"app-direct"` | no |
| <a name="input_logical_name_spaces"></a> [logical\_name\_spaces](#input\_logical\_name\_spaces) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_management_mode"></a> [management\_mode](#input\_management\_mode) | Management Mode of the policy. This can be either Configured from Intersight or Configured from Operating System.<br>* configured-from-intersight - The Persistent Memory Modules are configured from Intersight thorugh Persistent Memory policy.<br> * configured-from-operating-system - The Persistent Memory Modules are configured from operating system thorugh OS tools. | `string` | `"configured-from-intersight"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"persistent_memory"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_retain_name_spaces"></a> [retain\_name\_spaces](#input\_retain\_name\_spaces) | Persistent Memory Namespaces to be retained or not. | `bool` | `true` | no |
| <a name="input_secure_passphrase"></a> [secure\_passphrase](#input\_secure\_passphrase) | Secure passphrase to be applied on the Persistent Memory Modules on the server. The allowed characters are a-z, A to Z, 0-9, and special characters =, !, &, #, $, %, +, ^, @, \_, *, -. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Persistent Memory Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
