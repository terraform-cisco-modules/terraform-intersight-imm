# fc_pools - Intersight WWxN Pools Terraform Module

## Usage

```hcl
module "wwxn_pools" {

  source = "terraform-cisco-modules/imm/intersight//modules/fc_pools"

  # omitted...
}
```

This module will create a WWNN/WWPN Pool in Intersight.  This can be used to create Service Profiles and Service Templates that require a WWxN Pool.  

These resources are consumed:

* [WWxN Pools](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fcpool_pool)

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
| [intersight_fcpool_pool.fc_pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fcpool_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_order"></a> [assignment\_order](#input\_assignment\_order) | Assignment order decides the order in which the next identifier is allocated.<br>* sequential - Identifiers are assigned in a sequential order.<br>* default - Assignment order is decided by the system. | `string` | `"default"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Fiber-Channel Pool. | `string` | `""` | no |
| <a name="input_id_blocks"></a> [id\_blocks](#input\_id\_blocks) | List of WWxN's Configuration Parameters to Assign to the Fiber-Channel Pool.<br>* from - Staring WWxN Address.  An Example is "20:00:00:25:B5:00:00:00".<br>* size - Size of WWxN Pool.  An Example is 1000.<br>* to - Ending WWxN Address.  An Example is "20:00:00:25:B5:00:03:E7". | <pre>map(object(<br>    {<br>      from = string<br>      size = optional(number)<br>      to   = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Fiber-Channel Pool. | `string` | `"fc_pool"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_pool_purpose"></a> [pool\_purpose](#input\_pool\_purpose) | What type of Fiber-Channel Pool is this.  Options are:<br>* WWNN<br>* WWPN | `string` | `"WWPN"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | WWxN Pool Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
