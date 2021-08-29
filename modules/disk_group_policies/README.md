# disk_group_policies - Intersight Disk Group Policy Terraform Module

## Usage

```hcl
module "disk_group" {

  source = "terraform-cisco-modules/imm/intersight//modules/disk_group_policies"

  # omitted...
}
```

This module will create a Disk Group Policy in Intersight.  This can be used to create Profiles and Templates that require a Disk Group Policy.  

These resources are consumed

* [Disk Group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_disk_group_policy)

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
| [intersight_storage_disk_group_policy.disk_group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_disk_group_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_hot_spares"></a> [hot\_spares](#input\_hot\_spares) | Range of Disks to Add as Hot Spares.  Note in this example this would add 3 and 4.  Always Add one above your value. | `list(number)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"diskgroup_policy"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_raid_level"></a> [raid\_level](#input\_raid\_level) | The supported RAID level for the disk group.  Options are {Raid{0\|1\|5\|6\|10\|50\|60}} | `string` | `"Raid1"` | no |
| <a name="input_span_groups"></a> [span\_groups](#input\_span\_groups) | Using the Default Range would add disks 1 and 2 to a span\_group. | `map` | <pre>{<br>  "span_0": [<br>    {<br>      "disk": 1<br>    },<br>    {<br>      "disk": 2<br>    }<br>  ]<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_use_jbods"></a> [use\_jbods](#input\_use\_jbods) | Selected disks in the disk group in JBOD state will be set to Unconfigured Good state before they are used in virtual drive creation. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Disk Group Policy Managed Object ID (moid). |
| <a name="output_name"></a> [name](#output\_name) | Disk Group Policy Name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
