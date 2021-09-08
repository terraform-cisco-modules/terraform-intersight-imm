# imc_access_policies - Intersight IMC Access Policy Terraform Module

## Usage

```hcl
module "imc_access" {

  source = "terraform-cisco-modules/imm/intersight//modules/imc_access_policies"

  # omitted...
}
```

This module will create a IMC Access Policy in Intersight.  This can be used to create Profiles and Templates that require a IMC Access Policy.  

These resources are consumed

* [IMC Access](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/access_policy)

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
| <a name="input_enable_ipv4"></a> [enable\_ipv4](#input\_enable\_ipv4) | Flag to Enable or Disable the IPv4 Address Family for Poliices. | `bool` | `true` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Flag to Enable or Disable the IPv6 Address Family for Poliices. | `bool` | `false` | no |
| <a name="input_inband_ip_pool"></a> [inband\_ip\_pool](#input\_inband\_ip\_pool) | moid of an IP Pool to Assign to the IMC Access Policy. | `string` | `""` | no |
| <a name="input_inband_vlan_id"></a> [inband\_vlan\_id](#input\_inband\_vlan\_id) | VLAN ID to Assign as the Inband Management VLAN for IMC Access. | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"imc_access"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - chassis.Profile - For UCS Chassis Profiles.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | IMC Access Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
