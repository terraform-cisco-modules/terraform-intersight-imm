# kubernetes_cluster_profiles - Intersight Kubernetes Cluster Profile Terraform Module

## Usage

```hcl
module "kubernetes_cluster_profile" {

  source = "terraform-cisco-modules/imm/intersight//modules/kubernetes_cluster_profiles"

  # omitted...
}
```

This module will Create a Intersight Kubernetes Service Cluster in Intersight.  

These resources are consumed

* [Kubernetes Cluster Profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_cluster_profile)

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
| [intersight_kubernetes_cluster_profile.cluster](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_cluster_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | Action for cluster. i.e 'Deploy' 'Unassign' | `string` | `"Unassign"` | no |
| <a name="input_addon_configuration"></a> [addon\_configuration](#input\_addon\_configuration) | Addon configuration settings that are specific to a single cluster. | `list(map(string))` | `[]` | no |
| <a name="input_cert_config"></a> [cert\_config](#input\_cert\_config) | Certificates and keys that are used to configure a Kubernetescluster. If user does not specify any Certificates or Keys,system generated certificates will be used to configure the cluster. | `list(map(string))` | `[]` | no |
| <a name="input_container_runtime_moid"></a> [container\_runtime\_moid](#input\_container\_runtime\_moid) | MOID for the Runtime Policy that is being consumed. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Profile. | `string` | `""` | no |
| <a name="input_ip_pool_moid"></a> [ip\_pool\_moid](#input\_ip\_pool\_moid) | MOID derived from the IP Pool that is being consumed. | `string` | n/a | yes |
| <a name="input_load_balancer_count"></a> [load\_balancer\_count](#input\_load\_balancer\_count) | Number of load balancer addresses to deploy. Range is 1-999. | `number` | `3` | no |
| <a name="input_master_vip"></a> [master\_vip](#input\_master\_vip) | VIP for the cluster Kubernetes API server. If this is empty and a cluster IP pool is specified, it will be allocated from the IP pool. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"kubernetes_cluster"` | no |
| <a name="input_network_cidr_moid"></a> [network\_cidr\_moid](#input\_network\_cidr\_moid) | MOID for the Network Config Policy that is being consumed. | `string` | n/a | yes |
| <a name="input_nodeos_configuration_moid"></a> [nodeos\_configuration\_moid](#input\_nodeos\_configuration\_moid) | MOID for the System Config Policy that is being consumed. | `string` | n/a | yes |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | SSH Public Key to be used to node login. | `string` | n/a | yes |
| <a name="input_ssh_user"></a> [ssh\_user](#input\_ssh\_user) | SSH Username for node login. | `string` | `"iksadmin"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_trusted_certificate_authority_moid"></a> [trusted\_certificate\_authority\_moid](#input\_trusted\_certificate\_authority\_moid) | MOID for the Trusted Registry Policy that is being consumed. | `string` | `""` | no |
| <a name="input_wait_for_completion"></a> [wait\_for\_completion](#input\_wait\_for\_completion) | Wait for cluster completion true/false | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_moid"></a> [cluster\_moid](#output\_cluster\_moid) | Kubernetes Cluster Managed Object ID (moid). |
| <a name="output_profile_moid"></a> [profile\_moid](#output\_profile\_moid) | Kubernetes Cluster Profile Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
