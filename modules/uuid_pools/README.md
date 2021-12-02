# uuid_pools - Intersight UUID Pool Terraform Module

## Usage

```hcl
module "uuid_pool" {

  source = "terraform-cisco-modules/imm/intersight//modules/uuid_pools"

  # omitted...
}
```

This module will create a UUID Pool in Intersight.  This can be used to create Service Profiles and Service Templates that require a UUID Pool.  

These resources are consumed:

* [UUID Pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/uuidpool_pool)

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
| [intersight_uuidpool_pool.uuid_pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/uuidpool_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_order"></a> [assignment\_order](#input\_assignment\_order) | Assignment order decides the order in which the next identifier is allocated.<br>* sequential - Identifiers are assigned in a sequential order.<br>* default - Assignment order is decided by the system. | `string` | `"default"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the UUID Pool. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the UUID Pool. | `string` | `"uuid_pool"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Prefix to assign to the UUID Pool. | `string` | `"000025B5-0000-0000"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_uuid_blocks"></a> [uuid\_blocks](#input\_uuid\_blocks) | List of UUID's Suffix Parameters to Assign to the UUID Pool. | <pre>map(object(<br>    {<br>      from = string<br>      size = optional(number)<br>      to   = optional(string)<br>    }<br>  ))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UUID Pool Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
