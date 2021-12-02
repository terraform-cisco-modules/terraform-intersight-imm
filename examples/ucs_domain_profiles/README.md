# Intersight UCS Domain Profile Example

## This folder contains examples of a UCS Domain Profile.  This is not meant to be a working deployment

### Examples in this Directory

* UCS Domain Profile
* UCS Domain Profile Switch

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | >=1.0.19 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | 1.0.19 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ucs_domain_profile_a_example"></a> [ucs\_domain\_profile\_a\_example](#module\_ucs\_domain\_profile\_a\_example) | terraform-cisco-modules/imm/intersight//modules/ucs_domain_switches | >=0.9.6 |
| <a name="module_ucs_domain_profile_b_example"></a> [ucs\_domain\_profile\_b\_example](#module\_ucs\_domain\_profile\_b\_example) | terraform-cisco-modules/imm/intersight//modules/ucs_domain_switches | >=0.9.6 |
| <a name="module_ucs_domain_profile_example"></a> [ucs\_domain\_profile\_example](#module\_ucs\_domain\_profile\_example) | terraform-cisco-modules/imm/intersight//modules/ucs_domain_profiles | >=0.9.6 |

## Resources

| Name | Type |
|------|------|
| [intersight_organization_organization.org_moid](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/organization_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Intersight Organization. | `string` | `"default"` | no |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Key/Value Pairs to Assign as Attributes to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
