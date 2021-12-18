# vsan_policy_add_vsan - Intersight VSAN Policy - Add VSAN Terraform Module

## Usage

```hcl
module "vsan_add_vsan" {

  source = "terraform-cisco-modules/imm/intersight//modules/vsan_policy_add_vsan"

  # omitted...
}
```

This module will add a VSAN to a VSAN Policy in Intersight.  

These resources are consumed

* [VSAN Policy - Add VSAN](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_vsan)

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
| [intersight_fabric_vsan.vsan](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_vsan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_zoning"></a> [default\_zoning](#input\_default\_zoning) | Enables or Disables the default zoning state.<br>* Enabled - Admin configured Enabled State.<br>* Disabled - Admin configured Disabled State. | `string` | `"Disabled"` | no |
| <a name="input_fc_zone_sharing_mode"></a> [fc\_zone\_sharing\_mode](#input\_fc\_zone\_sharing\_mode) | Logical grouping mode for fc ports. | `string` | `""` | no |
| <a name="input_fcoe_vlan_id"></a> [fcoe\_vlan\_id](#input\_fcoe\_vlan\_id) | FCoE VLAN Identifier to Assign to the VSAN Policy. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name for the VSAN. | `string` | `"vsan"` | no |
| <a name="input_vsan_id"></a> [vsan\_id](#input\_vsan\_id) | VSAN Identifier to Assign to the VSAN Policy. | `number` | n/a | yes |
| <a name="input_vsan_policy_moid"></a> [vsan\_policy\_moid](#input\_vsan\_policy\_moid) | VSAN Policy (Fibre-Channel Network Policy) moid. | `string` | n/a | yes |
| <a name="input_vsan_scope"></a> [vsan\_scope](#input\_vsan\_scope) | Used to indicate whether the VSAN Id is defined for storage or uplink or both traffics in FI.<br>  * Uplink - Vsan associated with uplink network.<br>  * Storage - Vsan associated with storage network.<br>  * Common - Vsan that is common for uplink and storage network. | `string` | `"Uplink"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | VSAN Policy - Add VSAN Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
