
# kubernetes_cluster_addons - Intersight Kubernetes Cluster - Add-ons Terraform Module

## Usage

```hcl
module "kubernetes_cluster_addons" {

  source = "terraform-cisco-modules/imm/intersight//modules/kubernetes_cluster_addons"

  # omitted...
}
```

This module will assign a Add-ons Policies to an Intersight Kubernetes Cluster in Intersight.  

These resources are consumed

* [Kubernetes Cluster Add-ons](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_cluster_addon_profile)

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_addons"></a> [addons](#input\_addons) | The Addon Policy Managed Object ID's to add to the Kubernetes Cluster. | `list(map(string))` | `[]` | no |
| <a name="input_kubernetes_cluster_moid"></a> [kubernetes\_cluster\_moid](#input\_kubernetes\_cluster\_moid) | A reference to a kubernetes Cluster resource moid. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_addon"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Cluster Addon Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
