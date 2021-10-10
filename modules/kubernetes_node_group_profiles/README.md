# kubernetes_node_group_profiles - Intersight Kubernetes Cluster - Node Group Profile Terraform Module

## Usage

```hcl
module "kubernetes_node_group_profiles" {

  source = "terraform-cisco-modules/imm/intersight//modules/kubernetes_node_group_profiles"

  # omitted...
}
```

This module will Create a Intersight Kubernetes Service Cluster Node Group Profile and Assign it to a Cluster in Intersight.  

These resources are consumed

* [Kubernetes Node Group Profiles](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_node_group_profile)

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
| [intersight_kubernetes_node_group_profile.node_group_profile](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_node_group_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | User initiated action. i.e 'Deploy' 'Unassign' | `string` | `"Unassign"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Profile. | `string` | `""` | no |
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired number of nodes in this node group, same as minsize initially and is updated by the auto-scaler. | `string` | `""` | no |
| <a name="input_ip_pool_moid"></a> [ip\_pool\_moid](#input\_ip\_pool\_moid) | MOID derived from the IP Pool that is being consumed. | `string` | n/a | yes |
| <a name="input_kubernetes_cluster_moid"></a> [kubernetes\_cluster\_moid](#input\_kubernetes\_cluster\_moid) | A reference to a kubernetesClusterProfile resource. | `string` | n/a | yes |
| <a name="input_kubernetes_labels"></a> [kubernetes\_labels](#input\_kubernetes\_labels) | Kubernetes label policy of key/value Attributes to Assign to the Node. | `list(map(string))` | `[]` | no |
| <a name="input_kubernetes_version_moid"></a> [kubernetes\_version\_moid](#input\_kubernetes\_version\_moid) | MOID of the Version Policy to be assigned to the Node Profile. | `string` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum number of nodes desired in this node group. | `string` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum number of nodes desired in this node group. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"node_profile"` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | The node type ControlPlane, Worker or ControlPlaneWorker.<br>* ControlPlane - Node will be marked as a control plane node.<br>* ControlPlaneWorker - Node will be both a controle plane and a worker.<br>* Worker - Node will be marked as a worker node. | `string` | `"Worker"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Intersight Kubernetes Cluster Node Group Profile Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
