# k8s_cluster_addons - Intersight Kubernetes Cluster Addon Policy Terraform Module

## Usage

```hcl
module "k8s_cluster_addons" {

  source = "terraform-cisco-modules/imm/intersight//modules/k8s_cluster_addons"

  # omitted...
}
```

This module will assign aKubernetes Addon Policies to a IKS Cluster in Intersight.  

These resources are consumed

* [k8s_cluster_addons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_cluster_addon_profile)

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
| [intersight_kubernetes_cluster_addon_profile.cluster_addon](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_cluster_addon_profile) | resource |
| [intersight_kubernetes_addon_policy.addons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/kubernetes_addon_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addons"></a> [addons](#input\_addons) | The Addon to add to this Kubernetes Cluster.  Options are:<br> * ccp-monitor<br> * kubernetes-dashboard. | `set(string)` | `[]` | no |
| <a name="input_cluster_moid"></a> [cluster\_moid](#input\_cluster\_moid) | A reference to a kubernetesCluster resource. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_addon"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Cluster Addon Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
