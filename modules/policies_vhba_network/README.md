# policies_vnic_network - Intersight vNIC Network Policy Terraform Module

## Usage

```hcl
module "vnic_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vnic_network"

  # omitted...
}
```

This module will create an Ethernet Network Policy in Intersight.  This Policy is for Standalone UCS Rackmount Servers that require a Ethernet (vNIC) Network Policy.  

These resources are consumed

* [vnic_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_network_policy)

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
| [intersight_vnic_eth_network_policy.vnic_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_eth_network_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_vlan"></a> [default\_vlan](#input\_default\_vlan) | VLAN to Assign as the Default VLAN. | `number` | `1` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | Option to determine if the port can carry single VLAN (Access) or multiple VLANs (Trunk) traffic. | `string` | `"Access"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"network_group"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Ethernet Network Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
