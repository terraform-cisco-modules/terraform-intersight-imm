# virtual_machine_instance_type - Intersight Virtual Machine Instance Type Policy Terraform Module

## Usage

```hcl
module "virtual_machine_instance_type" {

  source = "terraform-cisco-modules/imm/intersight//modules/virtual_machine_instance_type"

  # omitted...
}
```

This module will create a Virtual Machine Instance Type Policy in Intersight.  This is consumed by Node Profile Policies assigned to Kubernetes Clusters.  

These resources are consumed

* [Virtual Machine Instance Type](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_virtual_machine_instance_type)

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
| [intersight_kubernetes_virtual_machine_instance_type.vm_instance_type](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/kubernetes_virtual_machine_instance_type) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu"></a> [cpu](#input\_cpu) | umber of CPUs allocated to virtual machine.  Range is 1-40. | `number` | `4` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the infrastructure provider. | `string` | `""` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Virtual machine memory defined in mebibytes (MiB).  Range is 1-4177920. | `number` | `16384` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of an Kubernetes Virtual Machine Instance Type Policy mapped to this provider. | `string` | `"k8s_vm_instance_type"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_system_disk_size"></a> [system\_disk\_size](#input\_system\_disk\_size) | Ephemeral disk capacity to be provided with units example - 10 for 10 Gigabytes. | `number` | `40` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of key/value pair Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Kubernetes Virtual Machine Instance Type Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
