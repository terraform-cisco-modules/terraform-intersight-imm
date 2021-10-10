# kubernetes_version_policies - Intersight Kubernetes Version Policy Terraform Module

## Usage

```hcl
module "kubernetes_version" {

  source = "terraform-cisco-modules/imm/intersight//modules/kubernetes_version_policies"

  # omitted...
}
```

This module will create a Kubernetes Version Policy in Intersight.  This is consumed by Node Profile Policies assigned to Kubernetes Clusters.  

These resources are consumed

* [Kubernetes Version](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_version_policy)

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
| [intersight_kubernetes_version_policy.version](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_version_policy) | resource |
| [intersight_kubernetes_version.version](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/kubernetes_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the policy. | `string` | `""` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | A reference to a kubernetesVersion resource. | `string` | `"v1.19.5"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the concrete policy. | `string` | `"kubernetes_version"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Version Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
