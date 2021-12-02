# resource_pools - Intersight Resource Pool Terraform Module

## Usage

```hcl
module "resource_pool" {

  source = "terraform-cisco-modules/imm/intersight//modules/resource_pools"

  # omitted...
}
```

This module will create a Resource Address Pool in Intersight.  This can be used when creating Service Profiles and Service Templates to assign a server resource.  

These resources are consumed:

* [Resource Pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/resourcepool_pool)

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
| [intersight_resourcepool_pool.resource_pool](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/resourcepool_pool) | resource |
| [intersight_compute_physical_summary.server](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/compute_physical_summary) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assignment_order"></a> [assignment\_order](#input\_assignment\_order) | Assignment order decides the order in which the next identifier is allocated.<br>* sequential - Identifiers are assigned in a sequential order.<br>* default - Assignment order is decided by the system. | `string` | `"default"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the MAC Address Pool. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the MAC Pool. | `string` | `"resource_pool"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_pool_type"></a> [pool\_type](#input\_pool\_type) | The resource management type in the pool, it can be either static or dynamic.<br>* Dynamic - The resources in the pool will be updated dynamically based on the condition.<br>* Static - The resources in the pool will not be changed until user manually update it. | `string` | `"Static"` | no |
| <a name="input_resource_type"></a> [resource\_type](#input\_resource\_type) | The type of the resource present in the pool, example 'server' its combination of RackUnit and Blade.<br>* None - The resource cannot consider for Resource Pool.<br>* Server - Resource Pool holds the server kind of resources, example - RackServer, Blade. | `string` | `"Server"` | no |
| <a name="input_serial_number_list"></a> [serial\_number\_list](#input\_serial\_number\_list) | A List of Compute Server Serial Numbers. | `set(string)` | n/a | yes |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | The type of the resource present in the pool, example 'server' its combination of RackUnit and Blade.<br>* Blades - A Blade Server.<br>* RackUnits - A Rackmount Server. | `string` | `"Blades"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Resource Pool Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
