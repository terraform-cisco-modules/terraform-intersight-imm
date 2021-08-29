# policies_storage - Intersight Storage Policy Terraform Module

## Usage

```hcl
module "storage_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_storage"

  # omitted...
}
```

This module will create a Storage Policy in Intersight.  This can be used to create Profiles and Templates that require a Storage Policy.  

These resources are consumed

* [storage_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_storage_policy)

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
| [intersight_storage_storage_policy.storage](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_storage_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"storage"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_retain_policy"></a> [retain\_policy](#input\_retain\_policy) | Retains the virtual drives defined in policy if they exist already. If this flag is false, the existing virtual drives are removed and created again based on virtual drives in the policy. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_unused_disks"></a> [unused\_disks](#input\_unused\_disks) | Unused Disks State is used to specify the state, unconfigured good or jbod, in which the disks that are not used in this policy should be moved.<br>* Jbod - JBOD state where the disks start showing up to host os.<br>* UnconfiguredGood - Unconfigured good state -ready to be added in a RAID group. | `string` | `"UnconfiguredGood"` | no |
| <a name="input_virtual_drives"></a> [virtual\_drives](#input\_virtual\_drives) | List of Properties to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Storage Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
