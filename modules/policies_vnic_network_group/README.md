# policies_vnic_network_group - Intersight Ethernet Network Group Policy (VLAN Group) Terraform Module

## Usage

```hcl
module "vlan_group" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_network_group"

  # omitted...
}
```

This module will create an Ethernet Network Group Policy (VLAN Group) in Intersight.  This can be used to create Profiles and Templates that require a Ethernet Network Group Policy.  

These resources are consumed

* [vlan_group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_eth_network_group_policy)

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
| [intersight_fabric_eth_network_group_policy.vlan_group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_eth_network_group_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_list_type"></a> [list\_type](#input\_list\_type) | Variable to Specify if the desire is for a range or list of vlans.  Options are {list\|range} | `string` | `"list"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"network_group"` | no |
| <a name="input_native_vlan"></a> [native\_vlan](#input\_native\_vlan) | VLAN to Assign as the Native VLAN. | `number` | `null` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vlan_list"></a> [vlan\_list](#input\_vlan\_list) | List of VLAN's to Add to the VLAN Group Policy.  Use this if list\_type is set to "list". | `list(string)` | <pre>[<br>  1,<br>  2,<br>  3,<br>  4,<br>  5<br>]</pre> | no |
| <a name="input_vlan_start"></a> [vlan\_start](#input\_vlan\_start) | Staring VLAN ID if list\_type is set to "range". | `number` | `1` | no |
| <a name="input_vlan_stop"></a> [vlan\_stop](#input\_vlan\_stop) | Staring VLAN ID if list\_type is set to "range". | `number` | `10` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Ethernet Network Group (VLAN Group) Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
