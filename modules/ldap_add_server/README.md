# ldap_add_server - Intersight LDAP - Add Server Terraform Module

## Usage

```hcl
module "ldap_provider" {

  source = "terraform-cisco-modules/imm/intersight//modules/ldap_add_server"

  # omitted...
}
```

This module will add an LDAP Server to a LDAP Policy in Intersight.

These resources are consumed

* [LDAP Server](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_provider)

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
| [intersight_iam_ldap_provider.ldap_provider](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/iam_ldap_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ldap_policy_moid"></a> [ldap\_policy\_moid](#input\_ldap\_policy\_moid) | A reference to a iamLdapPolicy resource. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | LDAP Server Port for connection establishment. | `number` | `389` | no |
| <a name="input_server"></a> [server](#input\_server) | LDAP Server Address, can be IP address or hostname. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | LDAP Server Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
