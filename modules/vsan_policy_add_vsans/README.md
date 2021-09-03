# vsan_policy_add_vsans - Intersight VSAN Policy - Add VSAN Terraform Module

## Usage

```hcl
module "vsan_add_vsans" {

  source = "terraform-cisco-modules/imm/intersight//modules/vsan_policy_add_vsans"

  # omitted...
}
```

This module will add a VSAN to a VSAN Policy in Intersight.  

These resources are consumed

* [VSAN Policy - Add VSANs](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_vsan)

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
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vsan_list"></a> [vsan\_list](#input\_vsan\_list) | n/a | <pre>map(object({<br>    fcoe_vlan = number<br>    vsan_id   = number<br>  }))</pre> | `{}` | no |
| <a name="input_vsan_policy_moid"></a> [vsan\_policy\_moid](#input\_vsan\_policy\_moid) | VSAN Policy (Fibre-Channel Network Policy) moid. | `string` | n/a | yes |
| <a name="input_vsan_prefix"></a> [vsan\_prefix](#input\_vsan\_prefix) | Prefix Name for VSANs. | `string` | `"VLAN"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | VSAN Policy - Add VSAN Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
