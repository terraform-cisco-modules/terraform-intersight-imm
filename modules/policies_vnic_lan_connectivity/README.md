# policies_lan_connectivity - Intersight LAN Connectivity Policy Terraform Module

## Usage

```hcl
module "lan_connectivity" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_lan_connectivity"

  # omitted...
}
```

This module will create a LAN Connectivity Policy in Intersight.  This can be used to create Profiles and Templates that require a LAN Connectivity Policy.  

These resources are consumed

* [lan_connectivity](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_lan_connectivity_policy)

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
| [intersight_vnic_lan_connectivity_policy.lan_connectivity](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vnic_lan_connectivity_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_iqn_allocation_type"></a> [iqn\_allocation\_type](#input\_iqn\_allocation\_type) | Allocation Type of iSCSI Qualified Name.  Options are {None\|Pool\|Static}. | `string` | `"None"` | no |
| <a name="input_iqn_pool"></a> [iqn\_pool](#input\_iqn\_pool) | IQN Pool to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_iqn_static_name"></a> [iqn\_static\_name](#input\_iqn\_static\_name) | User provided static iSCSI Qualified Name (IQN) for use as initiator identifiers by iSCSI vNICs. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"lan_connectivity"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_placement_mode"></a> [placement\_mode](#input\_placement\_mode) | The mode used for placement of vNICs on network adapters. It can either be auto or custom. | `string` | `"custom"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_target_platform"></a> [target\_platform](#input\_target\_platform) | The platform for which the server profile is applicable. It can either be a server that is operating in 'Standalone' mode or which is attached to a Fabric Interconnect 'FIAttached' managed by Intersight. | `string` | `"FIAttached"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LAN Connectivity Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
