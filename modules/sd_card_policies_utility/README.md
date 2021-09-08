# sd_card_policies_utility - Intersight Storage SD Card Policy Terraform Module

## Usage

```hcl
module "sd_card_utility" {

  source = "terraform-cisco-modules/imm/intersight//modules/sd_card_policies_utility"

  # omitted...
}
```

This module will create a Storage SD Card Policy with only the Utility Partiion in Intersight.  This can be used to create Profiles and Templates that require a Storage SD Card Policy that only includes the Utility Partition.  

These resources are consumed

* [SD Card](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/sdcard_policy)

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
| [intersight_sdcard_policy.utility](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/sdcard_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_diagnostics"></a> [enable\_diagnostics](#input\_enable\_diagnostics) | Flag to Enable the Diagnostics Utility Partition.<br>* When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.<br>* Note:<br>  - This policy is currently not supported on M6 servers.<br>  - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.<br>  - Diagnostics is supported only for the M5 servers.<br>  - UserPartition drives can be renamed only on the M4 servers.<br>  - FlexFlash configuration is not supported on C460 M4 servers.<br>  - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card. | `bool` | `false` | no |
| <a name="input_enable_drivers"></a> [enable\_drivers](#input\_enable\_drivers) | Flag to Enable the Drivers Utility Partition.<br>* When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.<br>* Note:<br>  - This policy is currently not supported on M6 servers.<br>  - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.<br>  - Diagnostics is supported only for the M5 servers.<br>  - UserPartition drives can be renamed only on the M4 servers.<br>  - FlexFlash configuration is not supported on C460 M4 servers.<br>  - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card. | `bool` | `false` | no |
| <a name="input_enable_huu"></a> [enable\_huu](#input\_enable\_huu) | Flag to Enable the HostUpgradeUtility Utility Partition.<br>* When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.<br>* Note:<br>  - This policy is currently not supported on M6 servers.<br>  - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.<br>  - Diagnostics is supported only for the M5 servers.<br>  - UserPartition drives can be renamed only on the M4 servers.<br>  - FlexFlash configuration is not supported on C460 M4 servers.<br>  - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card. | `bool` | `false` | no |
| <a name="input_enable_scu"></a> [enable\_scu](#input\_enable\_scu) | Flag to Enable the ServerConfigurationUtility Utility Partition.<br>* When two cards are present in the Cisco FlexFlash controller and Operating System is chosen in the SD card policy, the configured OS partition is mirrored. If only single card is available in the Cisco FlexFlash controller, the configured OS partition is non-RAID. The utility partitions are always set as non-RAID.<br>* Note:<br>  - This policy is currently not supported on M6 servers.<br>  - You can enable up to two utility virtual drives on M5 servers, and any number of supported utility virtual drives on M4 servers.<br>  - Diagnostics is supported only for the M5 servers.<br>  - UserPartition drives can be renamed only on the M4 servers.<br>  - FlexFlash configuration is not supported on C460 M4 servers.<br>  - For the Operating System+Utility mode, the M4 servers require two FlexFlash cards, and the M5 servers require at least 1 FlexFlash + 1 FlexUtil card. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"sd_card"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Storage SD Card Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
