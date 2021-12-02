# Intersight Server Profile

## This folder contains UCS Server Profiles and Templates.  This is not meant to be a working deployment

### Examples in this Directory

* UCS Server Profile
* UCS Server Template

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
| <a name="module_ucs_server_profile"></a> [ucs\_server\_profile](#module\_ucs\_server\_profile) | terraform-cisco-modules/imm/intersight//modules/ucs_server_profiles | >=0.9.6 |
| <a name="module_ucs_server_profile_template"></a> [ucs\_server\_profile\_template](#module\_ucs\_server\_profile\_template) | terraform-cisco-modules/imm/intersight//modules/ucs_server_templates | >=0.9.6 |

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
