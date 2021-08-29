# virtual_machine_infra_config - Intersight Virtual Machine Infra Config Policy Terraform Module

## Usage

```hcl
module "virtual_machine_infra_config" {

  source = "terraform-cisco-modules/imm/intersight//modules/virtual_machine_infra_config"

  # omitted...
}
```

This module will create a Kubernetes Virtual Machine Infra Config Policy in Intersight.  This is consumed by Node Profile Policies assigned to Kubernetes Clusters.  

These resources are consumed

* [Virtual Machine Infra Config](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_virtual_machine_infra_config_policy)

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
| [intersight_kubernetes_virtual_machine_infra_config_policy.vsphere](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_virtual_machine_infra_config_policy) | resource |
| [intersight_asset_target.vsphere_target](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/asset_target) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_addon"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vsphere_cluster"></a> [vsphere\_cluster](#input\_vsphere\_cluster) | Name of the cluster you wish to make part of this provider within vCenter. | `string` | n/a | yes |
| <a name="input_vsphere_datastore"></a> [vsphere\_datastore](#input\_vsphere\_datastore) | Name of the datastore to be used with this provider. | `string` | n/a | yes |
| <a name="input_vsphere_password"></a> [vsphere\_password](#input\_vsphere\_password) | Password of the account to be used with vCenter.  This should be the password for the account used to register vCenter with Intersight. | `string` | n/a | yes |
| <a name="input_vsphere_portgroup"></a> [vsphere\_portgroup](#input\_vsphere\_portgroup) | Name of the portgroup(s) to be used in this provider | `list(string)` | n/a | yes |
| <a name="input_vsphere_resource_pool"></a> [vsphere\_resource\_pool](#input\_vsphere\_resource\_pool) | Name of the resource pool to be used with this provider. | `string` | `""` | no |
| <a name="input_vsphere_target"></a> [vsphere\_target](#input\_vsphere\_target) | Name of the vSphere Target to assign to the Policy. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Virtull Machine Infra Config Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
