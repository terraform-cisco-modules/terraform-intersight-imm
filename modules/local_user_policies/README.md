# local_user_policies - Intersight Local User Policy Terraform Module

## Usage

```hcl
module "local_user" {

  source = "terraform-cisco-modules/imm/intersight//modules/local_user_policies"

  # omitted...
}
```

This module will create a Local User Policy in Intersight.  This can be used to create Profiles and Templates that require a Local User Password Policy.  

These resources are consumed

* [Local User](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_end_point_user_policy)

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
| [intersight_iam_end_point_user_policy.user_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_end_point_user_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_always_send_user_password"></a> [always\_send\_user\_password](#input\_always\_send\_user\_password) | User password will always be sent to endpoint device. If the option is not selected, then user password will be sent to endpoint device for new users and if user password is changed for existing users. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_password_expiry"></a> [enable\_password\_expiry](#input\_enable\_password\_expiry) | Enables password expiry on the endpoint. | `bool` | `false` | no |
| <a name="input_enforce_strong_password"></a> [enforce\_strong\_password](#input\_enforce\_strong\_password) | Enables a strong password policy. Strong password requirements: A. The password must have a minimum of 8 and a maximum of 20 characters. B. The password must not contain the User's Name. C. The password must contain characters from three of the following four categories. 1) English uppercase characters (A through Z). 2) English lowercase characters (a through z). 3) Base 10 digits (0 through 9). 4) Non-alphabetic characters (! , @, #, $, %, ^, &, *, -, \_, +, =). | `bool` | `true` | no |
| <a name="input_grace_period"></a> [grace\_period](#input\_grace\_period) | Time period until when you can use the existing password, after it expires. | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"local_user_policy"` | no |
| <a name="input_notification_period"></a> [notification\_period](#input\_notification\_period) | The duration after which the password will expire. | `number` | `15` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_password_expiry_duration"></a> [password\_expiry\_duration](#input\_password\_expiry\_duration) | Set time period for password expiration. Value should be greater than notification period and grace period. | `number` | `90` | no |
| <a name="input_password_history"></a> [password\_history](#input\_password\_history) | Tracks password change history. Specifies in number of instances, that the new password was already used. | `number` | `5` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Local User Password Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
