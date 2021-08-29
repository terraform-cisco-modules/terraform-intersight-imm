# link_aggregation_policies - Intersight Link Aggregation Policy Terraform Module

## Usage

```hcl
module "link_aggregation" {

  source = "terraform-cisco-modules/imm/intersight//modules/link_aggregation_policies"

  # omitted...
}
```

This module will create a Link Aggregation Policy in Intersight.  This can be used to create Domain Policies that require a Link Aggregation Policy.  

These resources are consumed

* [Link Aggregation](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_link_aggregation_policy)

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
| [intersight_fabric_link_aggregation_policy.link_aggregation](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_link_aggregation_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_lacp_rate"></a> [lacp\_rate](#input\_lacp\_rate) | Flag used to indicate whether LACP PDUs are to be sent 'fast', i.e., every 1 second.<br>* fast - The fast timeout rate is 1 second.<br>* normal - The normal timeout rate is 30 seconds. | `string` | `"normal"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"link_aggregation"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_suspend_individual"></a> [suspend\_individual](#input\_suspend\_individual) | Flag tells the switch whether to suspend the port if it didn’t receive LACP PDU. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Link Aggregation Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
