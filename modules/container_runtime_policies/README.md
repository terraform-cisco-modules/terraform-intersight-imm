# container_runtime_policies - Intersight Container Runtime Policy Terraform Module

## Usage

```hcl
module "container_runtime" {

  source = "terraform-cisco-modules/imm/intersight//modules/container_runtime_policies"

  # omitted...
}
```

This module will create a Container Runtime Policy in Intersight.  This is consumed by Kubernetes Cluster Profiles.  

These resources are consumed

* [Container Runtime](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_container_runtime_policy)

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
| <a name="input_docker_daemon_bridge_ip"></a> [docker\_daemon\_bridge\_ip](#input\_docker\_daemon\_bridge\_ip) | Bridge IP (--bip) including Prefix (e.g., 172.17.0.5/24) that Docker will use for the default bridge network (docker0). Containers will connect to this if no other network is configured, not used by kubernetes pods because their network is managed by CNI. However this address space must not collide with other CIDRs on your networks, including the cluster's Service CIDR, Pod Network CIDR and IP Pools. | `string` | `""` | no |
| <a name="input_docker_no_proxy"></a> [docker\_no\_proxy](#input\_docker\_no\_proxy) | Used to optionally exclude hosts or ranges from going through the proxy server. Refer to https://docs.docker.com/network/proxy/ for details. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the concrete policy. | `string` | `"container_runtime"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_proxy_http_hostname"></a> [proxy\_http\_hostname](#input\_proxy\_http\_hostname) | HTTP/HTTPS Proxy server FQDN or IP. | `string` | n/a | yes |
| <a name="input_proxy_http_password"></a> [proxy\_http\_password](#input\_proxy\_http\_password) | The password for the HTTP/HTTPS Proxy, If required. | `string` | `""` | no |
| <a name="input_proxy_http_port"></a> [proxy\_http\_port](#input\_proxy\_http\_port) | The HTTP Proxy port number. The port number of the HTTP/HTTPS proxy must be between 1 and 65535, inclusive. | `number` | `8080` | no |
| <a name="input_proxy_http_protocol"></a> [proxy\_http\_protocol](#input\_proxy\_http\_protocol) | Protocol to use for the HTTP/HTTPS Proxy.<br>* http<br>* https | `string` | `"http"` | no |
| <a name="input_proxy_http_username"></a> [proxy\_http\_username](#input\_proxy\_http\_username) | The username for the HTTP/HTTPS Proxy, If required. | `string` | `""` | no |
| <a name="input_proxy_https_hostname"></a> [proxy\_https\_hostname](#input\_proxy\_https\_hostname) | HTTPS Proxy server FQDN or IP. | `string` | n/a | yes |
| <a name="input_proxy_https_password"></a> [proxy\_https\_password](#input\_proxy\_https\_password) | The password for the HTTP/HTTPS Proxy, If required. | `string` | `""` | no |
| <a name="input_proxy_https_port"></a> [proxy\_https\_port](#input\_proxy\_https\_port) | The HTTPS Proxy port number. The port number of the HTTP/HTTPS proxy must be between 1 and 65535, inclusive. | `number` | `8443` | no |
| <a name="input_proxy_https_protocol"></a> [proxy\_https\_protocol](#input\_proxy\_https\_protocol) | Protocol to use for the HTTP/HTTPS Proxy.<br>* http<br>* https | `string` | `"https"` | no |
| <a name="input_proxy_https_username"></a> [proxy\_https\_username](#input\_proxy\_https\_username) | The username for the HTTP/HTTPS Proxy, If Required. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Container Runtime Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
