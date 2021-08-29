# local_user_add_users - Intersight Local User - Add User Terraform Module

## Usage

```hcl
module "add_user" {

  source = "terraform-cisco-modules/imm/intersight//modules/local_user_add_users"

  # omitted...
}
```

This module will Add a Local User to a Local User Policy in Intersight.  

These resources are consumed

* [Local Users - Add User](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_end_point_user)

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
| [intersight_iam_end_point_user.user](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_end_point_user) | resource |
| [intersight_iam_end_point_user_role.user_role](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_end_point_user_role) | resource |
| [intersight_iam_end_point_role.user_role](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/iam_end_point_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_user_enabled"></a> [user\_enabled](#input\_user\_enabled) | Enables the user account on the endpoint. | `bool` | `true` | no |
| <a name="input_user_password"></a> [user\_password](#input\_user\_password) | Valid login password of the user. | `string` | n/a | yes |
| <a name="input_user_policy_moid"></a> [user\_policy\_moid](#input\_user\_policy\_moid) | A reference to a iamEndPointUserPolicy resource. | `string` | n/a | yes |
| <a name="input_user_role"></a> [user\_role](#input\_user\_role) | The Role to Assign to the User.  Valid Options are:<br>* admin<br>* readonly<br>* user | `string` | `"readonly"` | no |
| <a name="input_username"></a> [username](#input\_username) | Name of the user to be created on the endpoint. It can be any string that adheres to the following constraints. It can have alphanumeric characters, dots, underscores and hyphen. It cannot be more than 16 characters. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Local User Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
