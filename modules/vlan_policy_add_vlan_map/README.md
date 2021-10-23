# vlan_policy_add_vlan_map - Intersight VLAN Policy - Add VLANs via Map Terraform Module

## Usage

```hcl
module "vlan_map" {

  source = "terraform-cisco-modules/imm/intersight//modules/vlan_policy_add_vlan_map"

  # omitted...
}
```

This module will Add VLANs via a Map to a VLAN Policy in Intersight.

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
| [intersight_fabric_vlan.vlan_map](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_vlan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_allow_on_uplinks"></a> [auto\_allow\_on\_uplinks](#input\_auto\_allow\_on\_uplinks) | Used to determine whether this VLAN will be allowed on all uplink ports and PCs in this FI. | `bool` | `false` | no |
| <a name="input_is_native"></a> [is\_native](#input\_is\_native) | Used to determine if this VLAN should be untagged on the interfaces. | `bool` | `false` | no |
| <a name="input_multicast_moid"></a> [multicast\_moid](#input\_multicast\_moid) | Multicast Policy moid map. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vlan_map"></a> [vlan\_map](#input\_vlan\_map) | This VLAN Map should contain key/value pairs of prefix and vlan\_id.  In Example:<br>vlan\_map = [<br>  {<br>    prefix  = "test"<br>    vlan\_id = 123<br>  },<br>  {<br>    prefix  = "test"<br>    vlan\_id = 124<br>  }<br>]<br>This will be configured as test-vl0123 and test-vl0124 in intersight. | `list(map(string))` | n/a | yes |
| <a name="input_vlan_policy_moid"></a> [vlan\_policy\_moid](#input\_vlan\_policy\_moid) | VLAN Policy (Ethernet Network Policy) moid. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vlan"></a> [vlan](#output\_vlan) | VLAN Policy > Add VLANs Attributes. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
