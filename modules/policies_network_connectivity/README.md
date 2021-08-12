# policies_dns - Intersight Network Connectivity (DNS) Policy Terraform Module

## Usage

```hcl
module "dns_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_dns"

  # omitted...
}
```

This module will create a Network Connectivity (DNS) Policy in Intersight.  This can be used to create UCS Domain and Standalone UCS Server Profiles that require a Network Connectivity DNS Policy.  

These resources are consumed

* [network_connectivity](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/networkconfig_policy)

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
| [intersight_networkconfig_policy.dns](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/networkconfig_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_dns_servers_v4"></a> [dns\_servers\_v4](#input\_dns\_servers\_v4) | List of IPv4 DNS Servers for this DNS Policy. | `list(string)` | <pre>[<br>  "208.67.220.220",<br>  "208.67.222.222"<br>]</pre> | no |
| <a name="input_dns_servers_v6"></a> [dns\_servers\_v6](#input\_dns\_servers\_v6) | List of IPv6 DNS Servers for this DNS Policy. | `list(string)` | `[]` | no |
| <a name="input_dynamic_dns"></a> [dynamic\_dns](#input\_dynamic\_dns) | Flag to Enable or Disable Dynamic DNS on the Policy.  Meaning obtain DNS Servers from DHCP Service. | `bool` | `false` | no |
| <a name="input_ipv6_enable"></a> [ipv6\_enable](#input\_ipv6\_enable) | Flag to Enable or Disable IPv6 on the Policy. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"dns"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profile_type"></a> [profile\_type](#input\_profile\_type) | Value to Identify the Type of Profile being applied to the policy.  Options are {domain\|server} | `string` | `"server"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_update_domain"></a> [update\_domain](#input\_update\_domain) | Name of the Domain to Update when using Dynamic DNS for the Policy. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Network Connecivity (DNS) Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
