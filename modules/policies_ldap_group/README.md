# policies_ldap_group - Intersight LDAP Group Terraform Module

## Usage

```hcl
module "ldap_group" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_ldap_group"

  # omitted...
}
```

This module will assign an LDAP Group to a LDAP Policy in Intersight.  

These resources are consumed

* [ldap_group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_group)

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
| [intersight_iam_end_point_role.group_role](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/iam_end_point_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_role"></a> [group\_role](#input\_group\_role) | The Role to Assign to the LDAP Group.  Valid Options are {admin\|readonly\|user} | `string` | `"readonly"` | no |
| <a name="input_ldap_domain"></a> [ldap\_domain](#input\_ldap\_domain) | LDAP server domain the Group resides in. | `string` | `"example.com"` | no |
| <a name="input_ldap_group"></a> [ldap\_group](#input\_ldap\_group) | LDAP Group name in the LDAP server database. | `string` | n/a | yes |
| <a name="input_ldap_policy_moid"></a> [ldap\_policy\_moid](#input\_ldap\_policy\_moid) | A reference to a iamLdapPolicy resource. | `string` | n/a | yes |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LDAP Group Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
