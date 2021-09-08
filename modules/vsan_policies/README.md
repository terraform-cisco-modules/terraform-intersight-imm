# vsan_policies - Intersight VSAN Policy Terraform Module

## Usage

```hcl
module "vsan" {

  source = "terraform-cisco-modules/imm/intersight//modules/vsan_policies"

  # omitted...
}
```

This module will create a VSAN Policy in Intersight.  This can be UCS Domain Profiles that require a Domain VSAN Policy.  

These resources are consumed

* [VSAN Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fc_network_policy)

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
| [intersight_fabric_fc_network_policy.vsan_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fc_network_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vsan_policy"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - fabric.SwitchProfile - For UCS Domain Switch Profiles. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_uplink_trunking"></a> [uplink\_trunking](#input\_uplink\_trunking) | Enable or Disable Trunking on all of configured FC uplink ports. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | VSAN Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
