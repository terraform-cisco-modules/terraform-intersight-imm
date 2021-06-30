# policies_imc_access - Intersight IMC Access Policy Terraform Module

## Usage

```hcl
module "imc_access_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_imc_access"

  # omitted...
}
```

This module will create a IMC Access Policy in Intersight.  This can be used to create Profiles and Templates that require a IMC Access Policy.  

These resources are consumed

* [access_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/access_policy)

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
| [intersight_access_policy.imc_access](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/access_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_imc_ip_pool"></a> [imc\_ip\_pool](#input\_imc\_ip\_pool) | moid of an IP Pool to Assign to the IMC Access Policy. | `string` | `""` | no |
| <a name="input_inband_mgmt_vlan"></a> [inband\_mgmt\_vlan](#input\_inband\_mgmt\_vlan) | VLAN ID to Assign as the Inband Management VLAN for IMC Access | `number` | `1` | no |
| <a name="input_ipv4_enable"></a> [ipv4\_enable](#input\_ipv4\_enable) | Flag to Enable or Disable the IPv4 Address Family for Poliices. | `bool` | `true` | no |
| <a name="input_ipv6_enable"></a> [ipv6\_enable](#input\_ipv6\_enable) | Flag to Enable or Disable the IPv6 Address Family for Poliices. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"imc_access"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | IMC Access Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
