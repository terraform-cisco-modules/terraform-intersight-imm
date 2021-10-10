# ldap_policies - Intersight LDAP Policy Terraform Module

## Usage

```hcl
module "ldap" {

  source = "terraform-cisco-modules/imm/intersight//modules/ldap_policies"

  # omitted...
}
```

This module will create a LDAP Policy in Intersight.  This can be used to create Profiles and Templates that require a LDAP Policy.  

These resources are consumed

* [LDAP](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_policy)

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
| [intersight_iam_ldap_policy.ldap](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_settings"></a> [base\_settings](#input\_base\_settings) | * base\_dn - Base Distinguished Name (DN). Starting point from where server will search for users and groups.<br>* domain - The LDAP Base domain that all users must be in.<br>* timeout - LDAP authentication timeout duration, in seconds.  Range is 0 to 180. | <pre>object(<br>    {<br>      base_dn = string<br>      domain  = string<br>      timeout = optional(number)<br>    }<br>  )</pre> | <pre>{<br>  "base_dn": "",<br>  "domain": "",<br>  "timeout": 0<br>}</pre> | no |
| <a name="input_binding_parameters"></a> [binding\_parameters](#input\_binding\_parameters) | * bind\_dn - Distinguished Name (DN) of the user, that is used to authenticate against LDAP servers.<br>* bind\_method - Authentication method to access LDAP servers.<br>  - Anonymous - Requires no username and password. If this option is selected and the LDAP server is configured for Anonymous logins, then the user gains access.<br>  - ConfiguredCredentials - Requires a known set of credentials to be specified for the initial bind process. If the initial bind process succeeds, then the distinguished name (DN) of the user name is queried and re-used for the re-binding process. If the re-binding process fails, then the user is denied access.<br>  - LoginCredentials - Requires the user credentials. If the bind process fails, then user is denied access. | <pre>object(<br>    {<br>      bind_dn     = optional(string)<br>      bind_method = optional(string)<br>    }<br>  )</pre> | <pre>{<br>  "bind_dn": "",<br>  "binding_method": "LoginCredentials"<br>}</pre> | no |
| <a name="input_binding_parameters_password"></a> [binding\_parameters\_password](#input\_binding\_parameters\_password) | The password of the user for initial bind process. It can be any string that adheres to the following constraints. It can have character except spaces, tabs, line breaks. It cannot be more than 254 characters. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_encryption"></a> [enable\_encryption](#input\_enable\_encryption) | If enabled, the endpoint encrypts all information it sends to the LDAP server. | `bool` | `false` | no |
| <a name="input_enable_group_authorization"></a> [enable\_group\_authorization](#input\_enable\_group\_authorization) | If enabled, user authorization is also done at the group level for LDAP users not in the local user database. | `bool` | `false` | no |
| <a name="input_enable_ldap"></a> [enable\_ldap](#input\_enable\_ldap) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_ldap_from_dns"></a> [ldap\_from\_dns](#input\_ldap\_from\_dns) | This Array enabled the use of DNS for LDAP Server discovery.<br>* enable - Enables DNS to access LDAP servers.<br>* search\_domain - Domain name that acts as a source for a DNS query.<br>* search\_forest - Forest name that acts as a source for a DNS query.<br>* source - Source of the domain name used for the DNS SRV request.<br>  - Configured - The configured-search domain.<br>  - ConfiguredExtracted - The domain name extracted from the login ID than the configured-search domain.<br>  - Extracted - The domain name extracted-domain from the login ID." | <pre>object(<br>    {<br>      enable        = optional(bool)<br>      search_domain = optional(string)<br>      search_forest = optional(string)<br>      source        = optional(string)<br>    }<br>  )</pre> | <pre>{<br>  "enable": false,<br>  "search_domain": "",<br>  "search_forest": "",<br>  "source": "Extracted"<br>}</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"ldap_policy"` | no |
| <a name="input_nested_group_search_depth"></a> [nested\_group\_search\_depth](#input\_nested\_group\_search\_depth) | Search depth to look for a nested LDAP group in an LDAP group map.  Range is 1 to 128. | `number` | `128` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_search_parameters"></a> [search\_parameters](#input\_search\_parameters) | attribute - Role and locale information of the user.<br>filter - Criteria to identify entries in search requests.<br>group\_attribute - Groups to which an LDAP user belongs. | <pre>object(<br>    {<br>      attribute       = optional(string)<br>      filter          = optional(string)<br>      group_attribute = optional(string)<br>    }<br>  )</pre> | <pre>{<br>  "attribute": "CiscoAvPair",<br>  "filter": "samAccountName",<br>  "group_attribute": "memberOf"<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_user_search_precedence"></a> [user\_search\_precedence](#input\_user\_search\_precedence) | Search precedence between local user database and LDAP user database.<br>* LocalUserDb - Precedence is given to local user database while searching.<br>* LDAPUserDb - Precedence is given to LADP user database while searching. | `string` | `"LocalUserDb"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LDAP Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
