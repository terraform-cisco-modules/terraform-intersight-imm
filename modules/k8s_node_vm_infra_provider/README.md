# k8s_node_policy - Intersight Kubernetes Virtual Machine Infrastructure Provider Policy Terraform Module

## Usage

```hcl
module "k8s_node_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/k8s_node_policy"

  # omitted...
}
```

This module will create a Kubernetes Virtual Machine Infrastructure Provider Policy in Intersight.  This is consumed by Node Profile Policies assigned to Kubernetes Clusters.  

These resources are consumed

* [k8s_node_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_virtual_machine_infrastructure_provider)

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
| [intersight_kubernetes_virtual_machine_infrastructure_provider.k8s_vm_infra_provider](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_virtual_machine_infrastructure_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the infrastructure provider. | `string` | `""` | no |
| <a name="input_k8s_node_group_moid"></a> [k8s\_node\_group\_moid](#input\_k8s\_node\_group\_moid) | MOID of the Kubernetes Node Profile mapped to this provider. | `string` | `""` | no |
| <a name="input_k8s_vm_infra_config_moid"></a> [k8s\_vm\_infra\_config\_moid](#input\_k8s\_vm\_infra\_config\_moid) | MOID of the Kubernetes Infra Config Policy mapped to this provider. | `string` | `""` | no |
| <a name="input_k8s_vm_instance_type_moid"></a> [k8s\_vm\_instance\_type\_moid](#input\_k8s\_vm\_instance\_type\_moid) | MOID of the Kubernetes Instance type Policy mapped to this provider. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of an Kubernetes Virtual Machine Instance Type Policy mapped to this provider. | `string` | `"k8s_vm_instance_type"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Virtual Machine Infrastructure Provider Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
