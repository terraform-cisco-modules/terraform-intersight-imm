# domain_vlan - Intersight UCS Domain Fabric VLAN Terraform Module

## Usage

```hcl
module "vlan" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_vlan"

  # omitted...
}
```

This module will create a Fabric VLAN in Intersight.  This can be used assign VLANs to a VLAN Policy.  

These resources are consumed

* [vlan](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/fabric_vlan)

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
| [intersight_fabric_vlan.vlan](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_vlan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_allow_on_uplinks"></a> [auto\_allow\_on\_uplinks](#input\_auto\_allow\_on\_uplinks) | Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI. | `bool` | `true` | no |
| <a name="input_is_native"></a> [is\_native](#input\_is\_native) | Used to determine if this VLAN should be untagged on the interfaces. | `bool` | `false` | no |
| <a name="input_multicast_moid"></a> [multicast\_moid](#input\_multicast\_moid) | Multicast Policy moid map. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vlan_list"></a> [vlan\_list](#input\_vlan\_list) | n/a | `set(string)` | <pre>[<br>  1,<br>  2,<br>  3,<br>  4,<br>  5,<br>  6,<br>  7,<br>  8,<br>  9,<br>  10<br>]</pre> | no |
| <a name="input_vlan_list_type"></a> [vlan\_list\_type](#input\_vlan\_list\_type) | Options are {list\|range}.  You can add VLANs as a list [1, 2, 3] or as a 1-100.  This will tell the script which type you are using. | `string` | `"list"` | no |
| <a name="input_vlan_policy_moid"></a> [vlan\_policy\_moid](#input\_vlan\_policy\_moid) | VLAN Policy (Ethernet Network Policy) moid. | `string` | n/a | yes |
| <a name="input_vlan_prefix"></a> [vlan\_prefix](#input\_vlan\_prefix) | Prefix Name for VLANs. | `string` | `"VLAN"` | no |
| <a name="input_vlan_range_start"></a> [vlan\_range\_start](#input\_vlan\_range\_start) | When vlan\_list\_type is set to range, this is the starting vlan id. | `number` | `1` | no |
| <a name="input_vlan_range_stop"></a> [vlan\_range\_stop](#input\_vlan\_range\_stop) | When vlan\_list\_type is set to range, this is the ending vlan id. | `number` | `2` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Fabric VLAN Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
