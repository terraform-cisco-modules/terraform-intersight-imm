# ldap_add_group - Intersight LDAP - Add New LDAP Group Terraform Module

## Usage

```hcl
module "ldap_add_group" {

  source = "terraform-cisco-modules/imm/intersight//modules/ldap_add_group"

  # omitted...
}
```

This module will assign an LDAP Group to a LDAP Policy in Intersight.  

These resources are consumed

* [LDAP Group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_group)

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
| [intersight_iam_ldap_group.ldap_group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_group) | resource |
| [intersight_iam_end_point_role.role](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/iam_end_point_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | LDAP server domain the Group resides in. | `string` | `"example.com"` | no |
| <a name="input_ldap_policy_moid"></a> [ldap\_policy\_moid](#input\_ldap\_policy\_moid) | A reference to a iamLdapPolicy resource. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | LDAP Group name in the LDAP server database. | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | The Role to Assign to the LDAP Group.  Valid Options are:<br>* admin<br>* readonly<br>* user | `string` | `"readonly"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LDAP Group Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
