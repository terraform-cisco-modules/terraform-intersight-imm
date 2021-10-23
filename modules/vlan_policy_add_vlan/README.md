# vlan_policy_add_vlan - Intersight VLAN Policy - Add VLAN Terraform Module

## Usage

```hcl
module "vlan_add_vlan" {

  source = "terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan"

  # omitted...
}
```

This module will Add VLANs to a VLAN Policy in Intersight.

These resources are consumed

* [VLAN Policy - Add VLAN](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/fabric_vlan)

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
| <a name="input_auto_allow_on_uplinks"></a> [auto\_allow\_on\_uplinks](#input\_auto\_allow\_on\_uplinks) | Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI. | `bool` | `false` | no |
| <a name="input_multicast_policy_moid"></a> [multicast\_policy\_moid](#input\_multicast\_policy\_moid) | Multicast Policy moid. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The 'name' used to identify this VLAN. | `string` | `"vlan-{vlan_id}"` | no |
| <a name="input_native_vlan"></a> [native\_vlan](#input\_native\_vlan) | Used to define whether this VLAN is to be classified as 'native' for traffic in this FI. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | The identifier for this Virtual LAN. | `number` | n/a | yes |
| <a name="input_vlan_policy_moid"></a> [vlan\_policy\_moid](#input\_vlan\_policy\_moid) | VLAN Policy (Ethernet Network Policy) moid. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vlan"></a> [vlan](#output\_vlan) | VLAN Policy > Add VLANs Attributes. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
