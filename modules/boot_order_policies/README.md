# boot_order_policies - Intersight Boot Order Policy Terraform Module

## Usage

```hcl
module "boot_order" {

  source = "terraform-cisco-modules/imm/intersight//modules/boot_order_policies"

  # omitted...
}
```

This module will create a Boot Order Policy in Intersight.  This can be used to create Service Profiles and Templates that require a Boot Order Policy.  

These resources are consumed

* [Boot Order](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/boot_precision_policy)

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
| [intersight_boot_precision_policy.boot_order](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/boot_precision_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boot_devices"></a> [boot\_devices](#input\_boot\_devices) | Map of Boot Devices to Assign to the Boot Policy.<br>* additional\_attributes - Please Refer to the Intersight Provider for how to Format the additional Attributes.<br>* enabled - Specifies if the boot device is enabled or disabled.<br>* name - A name that helps identify a boot device. It can be any string that adheres to the following constraints. It should start and end with an alphanumeric character. It can have underscores and hyphens. It cannot be more than 30 characters.<br>* object\_type - This will Match the Additional Properties Attributes configured above.  Options are:<br>  - boot.Iscsi<br>  - boot.LocalCdd<br>  - boot.LocalDisk<br>  - boot.Nvme<br>  - boot.PchStorage<br>  - boot.Pxe<br>  - boot.San<br>  - boot.SdCard<br>  - boot.UefiShell<br>  - boot.Usb<br>  - boot.VirtualMedia | <pre>map(object(<br>    {<br>      additional_properties = any<br>      enabled               = bool<br>      name                  = string<br>      object_type           = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_boot_mode"></a> [boot\_mode](#input\_boot\_mode) | Sets the BIOS boot mode. UEFI uses the GUID Partition Table (GPT) whereas Legacy mode uses the Master Boot Record (MBR) partitioning scheme. To apply this setting, Please reboot the server.<br>* Legacy - Legacy mode refers to the traditional process of booting from BIOS. Legacy mode uses the Master Boot Record (MBR) to locate the bootloader.<br>* Uefi - UEFI mode uses the GUID Partition Table (GPT) to locate EFI Service Partitions to boot from. | `string` | `"Uefi"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_secure_boot"></a> [enable\_secure\_boot](#input\_enable\_secure\_boot) | If UEFI secure boot is enabled, the boot mode is set to UEFI by default. Secure boot enforces that device boots using only software that is trusted by the Original Equipment Manufacturer (OEM). | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"boot_order"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Boot Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
