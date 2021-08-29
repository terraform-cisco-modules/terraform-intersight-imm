# policies_vlan_add_vlan - Intersight UCS Domain Fabric VLAN Terraform Module

## Usage

```hcl
module "vlan_add_vlan" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vlan_add_vlan"

  # omitted...
}
```

This module will Add VLANs to a VLAN Policy in Intersight.

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
| <a name="input_multicast_moid"></a> [multicast\_moid](#input\_multicast\_moid) | Multicast Policy moid map. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vlan"></a> [vlan](#input\_vlan) | n/a | `string` | `"1"` | no |
| <a name="input_vlan_policy_moid"></a> [vlan\_policy\_moid](#input\_vlan\_policy\_moid) | VLAN Policy (Ethernet Network Policy) moid. | `string` | n/a | yes |
| <a name="input_vlan_prefix"></a> [vlan\_prefix](#input\_vlan\_prefix) | Prefix Name for VLANs. | `string` | `"VLAN"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vlan"></a> [vlan](#output\_vlan) | Fabric VLAN Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
