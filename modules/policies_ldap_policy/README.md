# policies_ldap_policy - Intersight LDAP Policy Terraform Module

## Usage

```hcl
module "ldap_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_ldap_policy"

  # omitted...
}
```

This module will create a LDAP Policy in Intersight.  This can be used to create Profiles and Templates that require a LDAP Policy.  

These resources are consumed

* [ldap_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_policy)

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
| [intersight_iam_ldap_policy.ldap_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attribute"></a> [attribute](#input\_attribute) | Role and locale information of the user. | `string` | `"CiscoAvPair"` | no |
| <a name="input_base_dn"></a> [base\_dn](#input\_base\_dn) | Base Distinguished Name (DN). Starting point from where server will search for users and groups. | `string` | `"dc=example,dc=com"` | no |
| <a name="input_bind_dn"></a> [bind\_dn](#input\_bind\_dn) | Distinguished Name (DN) of the user, that is used to authenticate against LDAP servers. | `string` | `""` | no |
| <a name="input_bind_method"></a> [bind\_method](#input\_bind\_method) | Authentication method to access LDAP servers.<br> * Anonymous - Requires no username and password. If this option is selected and the LDAP server is configured for Anonymous logins, then the user gains access.<br> * ConfiguredCredentials - Requires a known set of credentials to be specified for the initial bind process. If the initial bind process succeeds, then the distinguished name (DN) of the user name is queried and re-used for the re-binding process. If the re-binding process fails, then the user is denied access.<br> * LoginCredentials - Requires the user credentials. If the bind process fails, then user is denied access. | `string` | `"LoginCredentials"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | The LDAP Base domain that all users must be in. | `string` | `"example.com"` | no |
| <a name="input_enable_dns"></a> [enable\_dns](#input\_enable\_dns) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_encryption"></a> [enable\_encryption](#input\_enable\_encryption) | If enabled, the endpoint encrypts all information it sends to the LDAP server. | `bool` | `false` | no |
| <a name="input_enable_group_authorization"></a> [enable\_group\_authorization](#input\_enable\_group\_authorization) | If enabled, user authorization is also done at the group level for LDAP users not in the local user database. | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_filter"></a> [filter](#input\_filter) | Criteria to identify entries in search requests. | `string` | `"samAccountName"` | no |
| <a name="input_group_attribute"></a> [group\_attribute](#input\_group\_attribute) | Groups to which an LDAP user belongs. | `string` | `"memberOf"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"ldap_policy"` | no |
| <a name="input_nested_group_search_depth"></a> [nested\_group\_search\_depth](#input\_nested\_group\_search\_depth) | Search depth to look for a nested LDAP group in an LDAP group map.  Range is 1 to 128. | `number` | `128` | no |
| <a name="input_nr_source"></a> [nr\_source](#input\_nr\_source) | Source of the domain name used for the DNS SRV request.<br> * Configured - The configured-search domain.<br> * ConfiguredExtracted - The domain name extracted from the login ID than the configured-search domain.<br> * Extracted - The domain name extracted-domain from the login ID. | `string` | `"Extracted"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_password"></a> [password](#input\_password) | The password of the user for initial bind process. It can be any string that adheres to the following constraints. It can have character except spaces, tabs, line breaks. It cannot be more than 254 characters. | `string` | `""` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_search_domain"></a> [search\_domain](#input\_search\_domain) | Domain name that acts as a source for a DNS query. | `string` | `""` | no |
| <a name="input_search_forest"></a> [search\_forest](#input\_search\_forest) | Forest name that acts as a source for a DNS query. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | LDAP authentication timeout duration, in seconds.  Range is 0 to 180. | `number` | `0` | no |
| <a name="input_user_search_precedence"></a> [user\_search\_precedence](#input\_user\_search\_precedence) | Search precedence between local user database and LDAP user database.<br> * LocalUserDb - Precedence is given to local user database while searching.<br> * LDAPUserDb - Precedence is given to LADP user database while searching. | `string` | `"LocalUserDb"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LDAP Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
