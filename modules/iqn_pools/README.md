# iqn_pools - Intersight IQN Pool Terraform Module

## Usage

```hcl
module "iqn_pools" {

  source = "terraform-cisco-modules/imm/intersight//modules/iqn_pools"

  # omitted...
}
```

This module will create an IQN Pool in Intersight.  This can be used to create Service Profiles, or Templates that require an IQN Pool.  

These resources are created

* [IQN Pools](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iqnpool_pool)

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
| [intersight_iqnpool_pool.iqn_pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iqnpool_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_order"></a> [assignment\_order](#input\_assignment\_order) | Assignment order decides the order in which the next identifier is allocated.<br>* sequential - Identifiers are assigned in a sequential order.<br>* default - Assignment order is decided by the system. | `string` | `"default"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the IQN Pool. | `string` | `""` | no |
| <a name="input_iqn_blocks"></a> [iqn\_blocks](#input\_iqn\_blocks) | List of IQN Pool Parameters to Assign to the IQN Pool.<br>* from - Staring IQN Address.  An Exmaple is 0.<br>* size - Size of the IQN Pool.  An Exmaple is 1000.<br>* suffix - Suffix to assign to the IQN Pool.  An Exmaple is "ucs-host".<br>* to - Ending IQN Address.  An Exmaple is 1000. | <pre>map(object(<br>    {<br>      from   = string<br>      size   = optional(number)<br>      suffix = string<br>      to     = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the IP Pool. | `string` | `"ip_pool"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | The prefix for IQN blocks created for this pool. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | IQN Pool Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
