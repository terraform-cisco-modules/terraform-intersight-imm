# network_cidr_policies - Intersight Kubernetes Network CIDR Policy Terraform Module

## Usage

```hcl
module "network_cidr" {

  source = "terraform-cisco-modules/imm/intersight//modules/network_cidr_policies"

  # omitted...
}
```

This module will create a Kubernetes Network CIDR Policy in Intersight.  This is consumed by Node Profile Policies assigned to Kubernetes Clusters.  

These resources are consumed

* [Kubernetes Network CIDR](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_network_policy)

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
| [intersight_kubernetes_network_policy.network_cidr](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_network_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cni_type"></a> [cni\_type](#input\_cni\_type) | Supported CNI type. Currently we only support Calico.<br>* Calico - Calico CNI plugin as described in https://github.com/projectcalico/cni-plugin.<br>* Aci - Cisco ACI Container Network Interface plugin. | `string` | `"Calico"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"k8s_network_cidr"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_pod_network_cidr"></a> [pod\_network\_cidr](#input\_pod\_network\_cidr) | CIDR block to allocate pod network IP addresses from. | `string` | `"100.64.0.0/16"` | no |
| <a name="input_service_cidr"></a> [service\_cidr](#input\_service\_cidr) | CIDR block to allocate cluster service IP addresses from. | `string` | `"100.65.0.0/16"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Network CIDR Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
