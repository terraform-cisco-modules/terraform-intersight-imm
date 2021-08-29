# policies_ipmi_over_lan - Intersight IPMI over LAN Policy Terraform Module

## Usage

```hcl
module "ipmi_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_ipmi_over_lan"

  # omitted...
}
```

This module will create a IPMI over LAN Policy in Intersight.  This can be used to create Service Profiles and Templates that require a IPMI over LAN Policy.  

These resources are consumed

* [ipmi_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ipmioverlan_policy)

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
| [intersight_ipmioverlan_policy.ipmi](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ipmioverlan_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_encryption_key"></a> [encryption\_key](#input\_encryption\_key) | The encryption key to use for IPMI communication. It should have an even number of hexadecimal characters and not exceed 40 characters. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"ipmi"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_privilege"></a> [privilege](#input\_privilege) | The highest privilege level that can be assigned to an IPMI session on a server.<br>* admin - Privilege to perform all actions available through IPMI.<br>* user - Privilege to perform some functions through IPMI but restriction on performing administrative tasks.<br>* read-only - Privilege to view information throught IPMI but restriction on making any changes. | `string` | `"admin"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | IPMI over LAN Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
