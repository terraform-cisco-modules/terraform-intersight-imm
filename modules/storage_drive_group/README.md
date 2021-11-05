# storage_drive_group - Intersight Storage - Drive Group Terraform Module

## Usage

```hcl
module "storage_drive_group" {

  source = "terraform-cisco-modules/imm/intersight//modules/storage_drive_group"

  # omitted...
}
```

This module will Assign a Drive Group to a Storage Policy in Intersight.  This can be used to create Profiles and Templates that require a Storage Policy.  

These resources are consumed

* [Drive Group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_drive_group)

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
| [intersight_storage_drive_group.drive_group](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/storage_drive_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automatic_drive_group"></a> [automatic\_drive\_group](#input\_automatic\_drive\_group) | This drive group is created using automatic drive selection.  This complex property has following sub-properties:<br>* drives\_per\_span - Number of drives within this span group. The minimum number of disks needed in a span group varies based on RAID level. RAID0 requires at least one disk. RAID1 and RAID10 requires at least 2 and in multiples of . RAID5 and RAID50 require at least 3 disks in a span group. RAID6 and RAID60 require atleast 4 disks in a span.<br>* drive\_type - Type of drive that should be used for this RAID group.<br>  - Any - Any type of drive can be used for virtual drive creation.<br>  - HDD - Hard disk drives should be used for virtual drive creation.<br>  - SSD - Solid state drives should be used for virtual drive creation.<br>* minimum\_drive\_size - Minimum size of the drive to be used for creating this RAID group.<br>* num\_dedicated\_hot\_spares - Number of dedicated hot spare disks for this RAID group. Allowed value is a comma or hyphen separated number range.<br>* number\_of\_spans - Number of span groups to be created for this RAID group. Non-nested RAID levels have a single span.<br>* use\_remaining\_drives - This flag enables the drive group to use all the remaining drives on the server. | <pre>map(object(<br>    {<br>      drive_type               = string<br>      drives_per_span          = number<br>      minimum_drive_size       = number<br>      num_dedicated_hot_spares = number<br>      number_of_spans          = number<br>      use_remaining_drives     = bool<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_manual_drive_group"></a> [manual\_drive\_group](#input\_manual\_drive\_group) | This drive group is created by specifying the drive slots to be used. This complex property has following sub-properties:<br>* dedicated\_hot\_spares:(string) A collection of drives to be used as hot spares for this Drive Group.<br>* drive\_array\_spans:(string) Collection of local disks that are part of this span group. Allowed value is a comma or hyphen separated number range. The minimum number of disks needed in a span group varies based on RAID level.<br>  - Raid0 requires at least one disk,<br>  - Raid1 and Raid10 requires at least 2 and in multiples of 2,<br>  - Raid5 Raid50 Raid6 and Raid60 require at least 3 disks in a span group. | <pre>map(object(<br>    {<br>      dedicated_hot_spares = optional(string)<br>      drive_array_spans    = any<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"disk_group"` | no |
| <a name="input_raid_level"></a> [raid\_level](#input\_raid\_level) | The supported RAID level for the disk group.<br>* Raid0 - RAID 0 Stripe Raid Level.<br>* Raid1 - RAID 1 Mirror Raid Level.<br>* Raid5 - RAID 5 Mirror Raid Level.<br>* Raid6 - RAID 6 Mirror Raid Level.<br>* Raid10 - RAID 10 Mirror Raid Level.<br>* Raid50 - RAID 50 Mirror Raid Level.<br>* Raid60 - RAID 60 Mirror Raid Level. | `string` | `"Raid1"` | no |
| <a name="input_storage_moid"></a> [storage\_moid](#input\_storage\_moid) | Storage Policy moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_virtual_drives"></a> [virtual\_drives](#input\_virtual\_drives) | This complex property has following sub-properties:<br>* boot\_drive:(bool) This flag enables this virtual drive to be used as a boot drive.<br>* expand\_to\_available:(bool) This flag enables the virtual drive to use all the space available in the disk group. When this flag is enabled, the size property is ignored.<br>* name:(string) The name of the virtual drive. The name can be between 1 and 15 alphanumeric characters. Spaces or any special characters other than - (hyphen), \_ (underscore), : (colon), and . (period) are not allowed.<br>* size:(int) Virtual drive size in MebiBytes. Size is mandatory field except when the Expand to Available option is enabled.<br>* access\_policy:(string) Access policy that host has on this virtual drive.<br>  - Default - Use platform default access mode.<br>  - Blocked - Host can neither read nor write to the VD.<br>  - ReadOnly - Host can only read from the VD.<br>  - ReadWrite - Enables host to perform read-write on the VD.<br>* disk\_cache:(string) Disk cache policy for the virtual drive.<br>  - Default - Use platform default drive cache mode.<br>  - Disable - Disables IO caching on the drive.<br>  - Enable - Enables IO caching on the drive.<br>  - NoChange - Drive cache policy is unchanged.<br>* read\_policy:(string) Read ahead mode to be used to read data from this virtual drive.<br>  - Default - Use platform default read ahead mode.<br>  - NoReadAhead - Do not use read ahead mode for the policy.<br>  - ReadAhead - Use read ahead mode for the policy.<br>* strip\_size:(string) Desired strip size - Allowed values are 64KiB, 128KiB, 256KiB, 512KiB, 1024KiB.<br>  * 64 - Number of bytes in a strip is 64 Kibibytes.<br>  * 128 - Number of bytes in a strip is 128 Kibibytes.<br>  * 256 - Number of bytes in a strip is 256 Kibibytes.<br>  * 512 - Number of bytes in a strip is 512 Kibibytes.<br>  * 1024 - Number of bytes in a strip is 1024 Kibibytes or 1 Mebibyte.<br>* write\_policy:(string) Write mode to be used to write data to this virtual drive.<br>  - Default - Use platform default write mode.<br>  - AlwaysWriteBack - With this policy, write caching remains Write Back even if the battery backup unit is defective or discharged.<br>  - WriteBackGoodBbu - Data is stored in the cache, and is only written to the physical drives when space in the cache is needed. Virtual drives requesting this policy fall back to Write Through caching when the battery backup unit (BBU) cannot guarantee the safety of the cache in the event of a power failure.<br>  - WriteThrough - Data is written through the cache and to the physical drives. Performance is improved, because subsequent reads of that data can be satisfied from the cache. | <pre>map(object(<br>    {<br>      access_policy       = string<br>      boot_drive          = string<br>      disk_cache          = string<br>      expand_to_available = bool<br>      read_policy         = string<br>      size                = number<br>      strip_size          = number<br>      write_policy        = string<br>    }<br>  ))</pre> | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Storage Policy - Drive Group Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
