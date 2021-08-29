# fibre_channel_network_policies - Intersight Fibre Channel Network Policy Terraform Module

## Usage

```hcl
module "fibre_channel_network" {

  source = "terraform-cisco-modules/imm/intersight//modules/fibre_channel_network_policies"

  # omitted...
}
```

This module will create an Fibre Channel Network Policy in Intersight.  This Policy is for Standalone UCS Rackmount Servers that require a Fibre Channel Network Policy.  

These resources are consumed

* [Fibre Channel Network](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_network_policy)

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
| [intersight_vnic_fc_network_policy.vhba_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_fc_network_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_vlan_id"></a> [default\_vlan\_id](#input\_default\_vlan\_id) | Only required for Standalone Servers.  Default VLAN of the virtual interface in Standalone Rack server. Setting the value to 0 is equivalent to None and will not associate any Default VLAN to the traffic on the virtual interface (0-4094). | `number` | `0` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vhba_policy"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vsan_id"></a> [vsan\_id](#input\_vsan\_id) | VSAN ID of the virtual interface in FI attached server (1-4094). | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Fibre Channel Network Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
