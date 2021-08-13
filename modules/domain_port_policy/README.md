# domain_port_policy - Intersight UCS Domain Port Policy Terraform Module

## Usage

```hcl
module "port_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_port_policy"

  # omitted...
}
```

This module will create a UCS Domain Port Policy in Intersight.  This can be used to assign a Port Policy to a UCS Domain.  

These resources are consumed

* [domain_port_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_port_policy)

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
| [intersight_fabric_port_policy.port_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_port_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_device_model"></a> [device\_model](#input\_device\_model) | This field specifies the device model that this Port Policy is being configured for.<br>* UCS-FI-6454 - The standard 4th generation UCS Fabric Interconnect with 54 ports.<br>* UCS-FI-64108 - The expanded 4th generation UCS Fabric Interconnect with 108 ports.<br>* unknown - Unknown device type, usage is TBD. | `string` | `"UCS-FI-6454"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"port_policy"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain Port Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
