# nodeos_configuration_policies - Intersight Node OS Configuration Policy Terraform Module

## Usage

```hcl
module "nodeos_configuration" {

  source = "terraform-cisco-modules/imm/intersight//modules/nodeos_configuration_policies"

  # omitted...
}
```

This module will create a Node OS Configuration Policy in Intersight.  This is consumed by Node Profile Policies assigned to Kubernetes Clusters.  

These resources are consumed

* [NodeOS Configuration](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_sys_config_policy)

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
| [intersight_kubernetes_sys_config_policy.nodeos_config](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_sys_config_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | DNS Servers for the Kubernetes Node OS Configuration Policy. | `list(string)` | <pre>[<br>  "208.67.220.220",<br>  "208.67.222.222"<br>]</pre> | no |
| <a name="input_dns_suffix"></a> [dns\_suffix](#input\_dns\_suffix) | Domain Name for the Kubernetes Node OS Configuration Policy. | `string` | `"example.com"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_nodeos_config"` | no |
| <a name="input_ntp_servers"></a> [ntp\_servers](#input\_ntp\_servers) | NTP Servers for the Kubernetes Node OS Configuration Policy. | `list(string)` | <pre>[<br>  "time-a-g.nist.gov",<br>  "time-b-g.nist.gov"<br>]</pre> | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | The timezone of the node's system clock. | `string` | `"Etc/GMT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Node OS Configuration Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
