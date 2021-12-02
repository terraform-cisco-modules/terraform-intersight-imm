# Intersight Management Mode Pool Examples

## This folder contains examples of how to consume the base modules.  This is not meant to be a working deployment

### Examples in this Directory

* Fibre Channel Pools
* IP Pools
* IQN Pools
* MAC Pools
* UUID Pools

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
| <a name="module_ip_pool_1"></a> [ip\_pool\_1](#module\_ip\_pool\_1) | terraform-cisco-modules/imm/intersight//modules/ip_pools | >=0.9.6 |
| <a name="module_ip_pool_2"></a> [ip\_pool\_2](#module\_ip\_pool\_2) | terraform-cisco-modules/imm/intersight//modules/ip_pools | >=0.9.6 |
| <a name="module_iqn_pool"></a> [iqn\_pool](#module\_iqn\_pool) | terraform-cisco-modules/imm/intersight//modules/iqn_pools | >=0.9.6 |
| <a name="module_mac_pool_a"></a> [mac\_pool\_a](#module\_mac\_pool\_a) | terraform-cisco-modules/imm/intersight//modules/mac_pools | >=0.9.6 |
| <a name="module_mac_pool_b"></a> [mac\_pool\_b](#module\_mac\_pool\_b) | terraform-cisco-modules/imm/intersight//modules/mac_pools | >=0.9.6 |
| <a name="module_uuid_pool"></a> [uuid\_pool](#module\_uuid\_pool) | terraform-cisco-modules/imm/intersight//modules/uuid_pools | >=0.9.6 |
| <a name="module_wwnn_pool"></a> [wwnn\_pool](#module\_wwnn\_pool) | terraform-cisco-modules/imm/intersight//modules/fc_pools | >=0.9.6 |
| <a name="module_wwpn_pool_a"></a> [wwpn\_pool\_a](#module\_wwpn\_pool\_a) | terraform-cisco-modules/imm/intersight//modules/fc_pools | >=0.9.6 |
| <a name="module_wwpn_pool_b"></a> [wwpn\_pool\_b](#module\_wwpn\_pool\_b) | terraform-cisco-modules/imm/intersight//modules/fc_pools | >=0.9.6 |

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

| Name | Description |
|------|-------------|
| <a name="output_ip_pool_1"></a> [ip\_pool\_1](#output\_ip\_pool\_1) | n/a |
| <a name="output_ip_pool_2"></a> [ip\_pool\_2](#output\_ip\_pool\_2) | n/a |
| <a name="output_iqn_pool"></a> [iqn\_pool](#output\_iqn\_pool) | n/a |
| <a name="output_mac_pool_a"></a> [mac\_pool\_a](#output\_mac\_pool\_a) | n/a |
| <a name="output_mac_pool_b"></a> [mac\_pool\_b](#output\_mac\_pool\_b) | n/a |
| <a name="output_uuid_pool"></a> [uuid\_pool](#output\_uuid\_pool) | n/a |
| <a name="output_wwnn_pool"></a> [wwnn\_pool](#output\_wwnn\_pool) | n/a |
| <a name="output_wwpn_pool_a"></a> [wwpn\_pool\_a](#output\_wwpn\_pool\_a) | n/a |
| <a name="output_wwpn_pool_b"></a> [wwpn\_pool\_b](#output\_wwpn\_pool\_b) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
