# policies_container_runtime - Intersight Container Runtime Policy Terraform Module

## Usage

```hcl
module "container_runtime" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_container_runtime"

  # omitted...
}
```

This module will create a Container Runtime Policy in Intersight.  This is consumed by Kubernetes Cluster Profiles.  

These resources are consumed

* [container_runtime](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_container_runtime_policy)

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
| [intersight_kubernetes_container_runtime_policy.runtime](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_container_runtime_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_docker_bridge_cidr"></a> [docker\_bridge\_cidr](#input\_docker\_bridge\_cidr) | The CIDR for docker bridge network. This address space must not collide with other CIDRs on your networks, including the cluster's service CIDR, pod CIDR and IP Pools. | `string` | `""` | no |
| <a name="input_docker_no_proxy"></a> [docker\_no\_proxy](#input\_docker\_no\_proxy) | Docker no proxy list, when using internet proxy. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the concrete policy. | `string` | `"k8s_runtime"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_proxy_http_hostname"></a> [proxy\_http\_hostname](#input\_proxy\_http\_hostname) | Hostname of the HTTP Proxy Server. | `string` | n/a | yes |
| <a name="input_proxy_http_password"></a> [proxy\_http\_password](#input\_proxy\_http\_password) | Password for the HTTP Proxy Server, If required. | `string` | `""` | no |
| <a name="input_proxy_http_port"></a> [proxy\_http\_port](#input\_proxy\_http\_port) | HTTP Proxy Port.  Range is 1-65535. | `number` | `8080` | no |
| <a name="input_proxy_http_protocol"></a> [proxy\_http\_protocol](#input\_proxy\_http\_protocol) | HTTP Proxy Protocol. Options are:<br>* http<br>* https | `string` | `"http"` | no |
| <a name="input_proxy_http_username"></a> [proxy\_http\_username](#input\_proxy\_http\_username) | The username for the HTTP Proxy. | `string` | `""` | no |
| <a name="input_proxy_https_hostname"></a> [proxy\_https\_hostname](#input\_proxy\_https\_hostname) | HTTPS Proxy server FQDN or IP. | `string` | n/a | yes |
| <a name="input_proxy_https_password"></a> [proxy\_https\_password](#input\_proxy\_https\_password) | Password for the HTTPS Proxy Server, If required. | `string` | `""` | no |
| <a name="input_proxy_https_port"></a> [proxy\_https\_port](#input\_proxy\_https\_port) | HTTPS Proxy Port.  Range is 1-65535. | `number` | `8443` | no |
| <a name="input_proxy_https_protocol"></a> [proxy\_https\_protocol](#input\_proxy\_https\_protocol) | HTTPS Proxy Protocol. Options are:<br>* http<br>* https | `string` | `"https"` | no |
| <a name="input_proxy_https_username"></a> [proxy\_https\_username](#input\_proxy\_https\_username) | Username for the HTTPS Proxy Server. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Runtime Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
