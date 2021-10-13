# device_claim - Intersight Device Claim (Claim Target) Terraform Module

## Usage

```hcl
module "claim_target" {

  source = "terraform-cisco-modules/imm/intersight//modules/device_claim"

  # omitted...
}
```

This module will Claim Targets in Intersight.  

These resources are consumed

* [device claim](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/appliance_device_claim)

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
| [intersight_vmedia_policy.vmedia](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vmedia_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_low_power_usb"></a> [enable\_low\_power\_usb](#input\_enable\_low\_power\_usb) | If enabled, the virtual drives appear on the boot selection menu after mapping the image and rebooting the host. | `bool` | `false` | no |
| <a name="input_enable_virtual_media_encryption"></a> [enable\_virtual\_media\_encryption](#input\_enable\_virtual\_media\_encryption) | If enabled, allows encryption of all Virtual Media communications. | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_mappings"></a> [mappings](#input\_mappings) | List of Properties to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vmedia"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | vMedia Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
