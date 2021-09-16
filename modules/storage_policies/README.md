# storage_policies - Intersight Storage Policy Terraform Module

## Usage

```hcl
module "storage_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/storage_policies"

  # omitted...
}
```

This module will create a Storage Policy in Intersight.  This can be used to create Profiles and Templates that require a Storage Policy.  

These resources are consumed

* [Storage Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_storage_policy)

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
| <a name="input_global_hot_spares"></a> [global\_hot\_spares](#input\_global\_hot\_spares) | A collection of disks that is to be used as hot spares, globally, for all the RAID groups. Allowed value is a number range separated by a comma or a hyphen. | `string` | `""` | no |
| <a name="input_m2_configuration"></a> [m2\_configuration](#input\_m2\_configuration) | Virtual Drive configuration for M.2 RAID controller. This complex property has following sub-properties:<br>* controller\_slot - Select the M.2 RAID controller slot on which the virtual drive is to be created. For example:<br>  - MSTOR-RAID-1 - Virtual drive will be created on the M.2 RAID controller in the first slot.<br>  - MSTOR-RAID-2 - Virtual drive will be created on the M.2 RAID controller in the second slot, if available.<br>  - MSTOR-RAID-1,MSTOR-RAID-2 (Default) - Virtual drive will be created on the M.2 RAID controller in both the slots, if available.<br>* enable - Default is true.  If enabled, this will create a virtual drive on the M.2 RAID controller. | <pre>map(object(<br>    {<br>      controller_slot = string<br>      enable          = bool<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"storage"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_raid0_drive"></a> [raid0\_drive](#input\_raid0\_drive) | This complex property has following sub-properties:<br>* access\_policy - Access policy that host has on this virtual drive.<br>  - Default - Use platform default access mode.<br>  - Blocked - Host can neither read nor write to the VD.<br>  - ReadOnly - Host can only read from the VD.<br>  - ReadWrite - Enables host to perform read-write on the VD.<br>* drive\_cache - Disk cache policy for the virtual drive.<br>  - Default - Use platform default drive cache mode.<br>  - Disable - Disables IO caching on the drive.<br>  - Enable - Enables IO caching on the drive.<br>  - NoChange - Drive cache policy is unchanged.<br>* drive\_slots - The set of drive slots where RAID0 virtual drives must be created.<br>* enable - If enabled, this will create a RAID0 virtual drive per disk and encompassing the whole disk.<br>* read\_policy - Read ahead mode to be used to read data from this virtual drive.<br>  - Default - Use platform default read ahead mode.<br>  - NoReadAhead - Do not use read ahead mode for the policy.<br>  - ReadAhead - Use read ahead mode for the policy.<br>* strip\_size - Desired strip size - Allowed values are 64KiB, 128KiB, 256KiB, 512KiB, 1024KiB.<br>  - 64 - (Defualt)  Number of bytes in a strip is 64 Kibibytes.<br>  - 128 - Number of bytes in a strip is 128 Kibibytes.<br>  - 256 - Number of bytes in a strip is 256 Kibibytes.<br>  - 512 - Number of bytes in a strip is 512 Kibibytes.<br>  - 1024 - Number of bytes in a strip is 1024 Kibibytes or 1 Mebibyte.<br>* write\_policy:(string) Write mode to be used to write data to this virtual drive.<br>  - Default - Use platform default write mode.<br>  - AlwaysWriteBack - With this policy, write caching remains Write Back even if the battery backup unit is defective or discharged.<br>  - WriteBackGoodBbu - Data is stored in the cache, and is only written to the physical drives when space in the cache is needed. Virtual drives requesting this policy fall back to Write Through caching when the battery backup unit (BBU) cannot guarantee the safety of the cache in the event of a power failure.<br>  - WriteThrough - Data is written through the cache and to the physical drives. Performance is improved, because subsequent reads of that data can be satisfied from the cache. | <pre>map(object(<br>    {<br>      access_policy = string<br>      drive_cache   = string<br>      drive_slots   = string<br>      enable        = bool<br>      read_policy   = string<br>      strip_size    = number<br>      write_policy  = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_unused_disks_state"></a> [unused\_disks\_state](#input\_unused\_disks\_state) | State to which disks, not used in this policy, are to be moved.<br>* Jbod - JBOD state where the disks start showing up to Host OS.<br>* NoChange - (Default) Drive state will not be modified by Storage Policy.<br>* UnconfiguredGood - Unconfigured good state -ready to be added in a RAID group. | `string` | `"NoChange"` | no |
| <a name="input_use_jbod_for_vd_creation"></a> [use\_jbod\_for\_vd\_creation](#input\_use\_jbod\_for\_vd\_creation) | Disks in JBOD State are used to create virtual drives. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Storage Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
