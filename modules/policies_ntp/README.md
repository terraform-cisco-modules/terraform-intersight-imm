# policies_ntp - Intersight NTP Policy Terraform Module

## Usage

```hcl
module "ntp_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_ntp"

  # omitted...
}
```

This module will create a NTP Policy in Intersight.  This can be used to create Profiles and Templates that require a NTP Policy.  

These resources are consumed

* [ntp_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ntp_policy)

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
| [intersight_ntp_policy.ntp](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ntp_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authenticated_ntp_servers"></a> [authenticated\_ntp\_servers](#input\_authenticated\_ntp\_servers) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"ntp"` | no |
| <a name="input_ntp_servers"></a> [ntp\_servers](#input\_ntp\_servers) | List of NTP Servers to Assign to the Policy. | `list(string)` | <pre>[<br>  "time-a-g.nist.gov",<br>  "time-b-g.nist.gov"<br>]</pre> | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | Timezone to Assign to the Policy. | `string` | `"Etc/GMT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | NTP Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
