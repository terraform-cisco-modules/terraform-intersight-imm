# ip_pools - Intersight IP Pool Terraform Module

## Usage

```hcl
module "ip_pools" {

  source = "terraform-cisco-modules/imm/intersight//modules/ip_pools"

  # omitted...
}
```

This module will create an IP Pool in Intersight.  This can be used to create IMM Domains, Service Profiles, or other objects that require an IP Pool.  

These resources are created

* [IP Pools](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ippool_pool)

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
| [intersight_ippool_pool.ip_pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ippool_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_order"></a> [assignment\_order](#input\_assignment\_order) | Assignment order decides the order in which the next identifier is allocated.<br>* sequential - Identifiers are assigned in a sequential order.<br>* default - Assignment order is decided by the system. | `string` | `"default"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the IP Pool. | `string` | `""` | no |
| <a name="input_ipv4_blocks"></a> [ipv4\_blocks](#input\_ipv4\_blocks) | List of IPv4 Addresses to Assign to the IP Pool. | <pre>map(object(<br>    {<br>      from = string<br>      size = optional(number)<br>      to   = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_ipv4_config"></a> [ipv4\_config](#input\_ipv4\_config) | List of IPv4 Addresses to Assign to the IP Pool.<br>* gateway - Gateway of the Subnet<br>* netmask - Netmask of the Subnet in X.X.X.X format<br>* primary\_dns = Primary DNS Server to Assign to the Pool<br>* secondary\_dns = Secondary DNS Server to Assign to the Pool | <pre>map(object(<br>    {<br>      gateway       = string<br>      netmask       = string<br>      primary_dns   = optional(string)<br>      secondary_dns = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_ipv6_blocks"></a> [ipv6\_blocks](#input\_ipv6\_blocks) | List of IPv6 Addresses to Assign to the IP Pool.<br>* from - Starting IPv6 Address.<br>* size - Size of the IPv6 Address Pool<br>* to - Ending IPv6 Address. | <pre>map(object(<br>    {<br>      from = string<br>      size = optional(number)<br>      to   = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_ipv6_config"></a> [ipv6\_config](#input\_ipv6\_config) | List of IPv6 Configuration Parameters to Assign to the IP Pool.<br>* gateway - Gateway of the Subnet<br>* prefix - Prefix of the Subnet in Integer format<br>* primary\_dns = Primary DNS Server to Assign to the Pool<br>* secondary\_dns = Secondary DNS Server to Assign to the Pool | <pre>map(object(<br>    {<br>      gateway       = string<br>      prefix        = number<br>      primary_dns   = optional(string)<br>      secondary_dns = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the IP Pool. | `string` | `"ip_pool"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | IP Pool Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
