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
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | >=1.0.11 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | 1.0.11 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ip_pool_1"></a> [ip\_pool\_1](#module\_ip\_pool\_1) | ../../modules/pools_ip | n/a |
| <a name="module_ip_pool_2"></a> [ip\_pool\_2](#module\_ip\_pool\_2) | ../../modules/pools_ip | n/a |
| <a name="module_iqn_pool"></a> [iqn\_pool](#module\_iqn\_pool) | ../../modules/pools_iqn | n/a |
| <a name="module_mac_pool_a"></a> [mac\_pool\_a](#module\_mac\_pool\_a) | ../../modules/pools_mac | n/a |
| <a name="module_mac_pool_b"></a> [mac\_pool\_b](#module\_mac\_pool\_b) | ../../modules/pools_mac | n/a |
| <a name="module_uuid_pool"></a> [uuid\_pool](#module\_uuid\_pool) | ../../modules/pools_uuid | n/a |
| <a name="module_wwnn_pool"></a> [wwnn\_pool](#module\_wwnn\_pool) | ../../modules/pools_fc | n/a |
| <a name="module_wwpn_pool_a"></a> [wwpn\_pool\_a](#module\_wwpn\_pool\_a) | ../../modules/pools_fc | n/a |
| <a name="module_wwpn_pool_b"></a> [wwpn\_pool\_b](#module\_wwpn\_pool\_b) | ../../modules/pools_fc | n/a |

## Resources

| Name | Type |
|------|------|
| [intersight_organization_organization.org_moid](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/organization_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apikey"></a> [apikey](#input\_apikey) | Intersight API Key. | `string` | n/a | yes |
| <a name="input_assignment_order"></a> [assignment\_order](#input\_assignment\_order) | Assignment order decides the order in which the next identifier is allocated.<br> * sequential - Identifiers are assigned in a sequential order.<br>* default - Assignment order is decided by the system. | `string` | `"default"` | no |
| <a name="input_dns_servers_v4"></a> [dns\_servers\_v4](#input\_dns\_servers\_v4) | List of DNS Servers for this Pool. | `list(string)` | `[]` | no |
| <a name="input_dns_servers_v6"></a> [dns\_servers\_v6](#input\_dns\_servers\_v6) | List of DNS Servers for this Pool. | `list(string)` | `[]` | no |
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Intersight URL. | `string` | `"https://intersight.com"` | no |
| <a name="input_id_blocks"></a> [id\_blocks](#input\_id\_blocks) | List of WWxN's Configuration Parameters to Assign to the Fiber-Channel Pool. | `list(map(string))` | `[]` | no |
| <a name="input_ipv4_block"></a> [ipv4\_block](#input\_ipv4\_block) | List of IPv4 Addresses to Assign to the IP Pool. | `list(map(string))` | `[]` | no |
| <a name="input_ipv4_config"></a> [ipv4\_config](#input\_ipv4\_config) | List of IPv4 Configuration Parameters to Assign to the IP Pool. | `list(map(string))` | `[]` | no |
| <a name="input_ipv6_block"></a> [ipv6\_block](#input\_ipv6\_block) | List of IPv6 Addresses to Assign to the IP Pool. | `list(map(string))` | `[]` | no |
| <a name="input_ipv6_config"></a> [ipv6\_config](#input\_ipv6\_config) | List of IPv6 Configuration Parameters to Assign to the IP Pool. | `list(map(string))` | `[]` | no |
| <a name="input_iqn_prefix"></a> [iqn\_prefix](#input\_iqn\_prefix) | The prefix for IQN blocks created for this pool. | `string` | `""` | no |
| <a name="input_iqn_suffix_blocks"></a> [iqn\_suffix\_blocks](#input\_iqn\_suffix\_blocks) | List of IQN Pool Parameters to Assign to the IQN Pool.<br> * from: Starting IQN Address.<br> * size: Size of the IQN Pool.<br> * suffix: Suffix to assign to the IQN Pool. | `list(map(string))` | `[]` | no |
| <a name="input_mac_blocks"></a> [mac\_blocks](#input\_mac\_blocks) | List of MAC Address Configuration Parameters to Assign to the MAC Pool. | `list(map(string))` | `[]` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Intersight Organization. | `string` | `"default"` | no |
| <a name="input_secretkey"></a> [secretkey](#input\_secretkey) | Intersight Secret Key. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Key/Value Pairs to Assign as Attributes to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_uuid_prefix"></a> [uuid\_prefix](#input\_uuid\_prefix) | Prefix to assign to the UUID Pool. | `string` | `"123e4567-e89b-42d3"` | no |
| <a name="input_uuid_suffix_blocks"></a> [uuid\_suffix\_blocks](#input\_uuid\_suffix\_blocks) | List of UUID's Suffix Parameters to Assign to the UUID Pool. | `list(map(string))` | `[]` | no |

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
