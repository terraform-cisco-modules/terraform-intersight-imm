# policies_syslog - Intersight Syslog Policy Terraform Module

## Usage

```hcl
module "syslog_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_syslog"

  # omitted...
}
```

This module will create a Syslog Policy in Intersight.  This can be used to create Domains, Profiles, and Templates that require a Syslog Policy.  

These resources are consumed

* [syslog_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/syslog_policy)

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
| [intersight_syslog_policy.syslog](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/syslog_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"syslog"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profile_type"></a> [profile\_type](#input\_profile\_type) | Value to Identify the Type of Profile being applied to the policy.  Options are {domain\|server} | `string` | `"server"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_remote_clients"></a> [remote\_clients](#input\_remote\_clients) | Configure up to 2 remote syslog servers. | `list(map(string))` | `[]` | no |
| <a name="input_syslog_severity"></a> [syslog\_severity](#input\_syslog\_severity) | Lowest level of messages to be included in the local log.<br> * warning - Use logging level warning for logs classified as warning.<br> * emergency - Use logging level emergency for logs classified as emergency.<br> * alert - Use logging level alert for logs classified as alert.<br> * critical - Use logging level critical for logs classified as critical.<br> * error - Use logging level error for logs classified as error.<br> * notice - Use logging level notice for logs classified as notice.<br> * informational - Use logging level informational for logs classified as informational.<br> * debug - Use logging level debug for logs classified as debug. | `string` | `"warning"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Syslog Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
