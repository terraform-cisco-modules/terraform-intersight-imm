# smtp_policies - Intersight SMTP Policy Terraform Module

## Usage

```hcl
module "smtp_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/smtp_policies"

  # omitted...
}
```

This module will create an SMTP Policy in Intersight.  This can be used to create Profiles and Templates that require an SMTP Policy.  

These resources are consumed

* [SMTP Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/smtp_policy)

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
| [intersight_smtp_policy.smtp](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/smtp_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | If enabled, controls the state of the SMTP client service on the managed device. | `bool` | `true` | no |
| <a name="input_min_severity"></a> [min\_severity](#input\_min\_severity) | Minimum fault severity level to receive email notifications. Email notifications are sent for all faults whose severity is equal to or greater than the chosen level.<br>* critical - Minimum severity to report is critical.<br>* condition - Minimum severity to report is informational.<br>* warning - Minimum severity to report is warning.<br>* minor - Minimum severity to report is minor.<br>* major - Minimum severity to report is major. | `string` | `"critical"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"smtp"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_sender_email"></a> [sender\_email](#input\_sender\_email) | The email address entered here will be displayed as the from address (mail received from address) of all the SMTP mail alerts that are received. If not configured, the hostname of the server is used in the from address field. | `string` | `""` | no |
| <a name="input_smtp_port"></a> [smtp\_port](#input\_smtp\_port) | Port number used by the SMTP server for outgoing SMTP communication.  Valid range is between 1-65535. | `number` | `25` | no |
| <a name="input_smtp_recipients"></a> [smtp\_recipients](#input\_smtp\_recipients) | List of Emails to send alerts to. | `list(string)` | `[]` | no |
| <a name="input_smtp_server"></a> [smtp\_server](#input\_smtp\_server) | IP address or hostname of the SMTP server. The SMTP server is used by the managed device to send email notifications. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | SMTP Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
