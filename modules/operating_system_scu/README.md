# operating_system_scu - Intersight Operating System SCU Distributable Terraform Module

## Usage

```hcl
module "operating_system_scu" {

  source = "terraform-cisco-modules/imm/intersight//modules/operating_system_scu"

  # omitted...
}
```

This module will create a Software Configuration Utility Distributable in Intersight.  This can be used to Install an operating system on a Bare Metal Server.  

These resources are consumed

* [SCU](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/firmware_server_configuration_utility_distributable)

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
| [intersight_firmware_server_configuration_utility_distributable.scu](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/firmware_server_configuration_utility_distributable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_catalog"></a> [catalog](#input\_catalog) | A reference to a softwarerepositoryCatalog resource. | <pre>list(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_import_action"></a> [import\_action](#input\_import\_action) | The action to be performed on the imported file. If 'PreCache' is set, the image will be cached in Appliance. Applicable in Intersight appliance deployment. If 'Evict' is set, the cached file will be removed. Applicable in Intersight appliance deployment. If 'GeneratePreSignedUploadUrl' is set, generates pre signed URL (s) for the file to be imported into the repository. Applicable for local machine source. The URL (s) will be populated under LocalMachine file server. If 'CompleteImportProcess' is set, the ImportState is marked as 'Imported'. Applicable for local machine source. If 'Cancel' is set, the ImportState is marked as 'Failed'. Applicable for local machine source.<br>* None - No action should be taken on the imported file.<br>* Cancel - The cancel import process for the file into the repository.<br>* CompleteImportProcess - Mark that the import process of the file into the repository is complete.<br>* Extract - The action to extract the file in the external repository.<br>* Evict - Evict the cached file from the Intersight Appliance.<br>* GeneratePreSignedDownloadUrl - Generate pre signed URL of file in the repository to download.<br>* GeneratePreSignedUploadUrl - Generate pre signed URL of file for importing into the repository.<br>* MarkImportFailed - Mark to indicate that the import process of the file into the repository failed.<br>* PreCache - Cache the file into the Intersight Appliance. | `string` | `""` | no |
| <a name="input_md5sum"></a> [md5sum](#input\_md5sum) | The md5sum checksum of the file. This information is available for all Cisco distributed images and files imported to the local repository. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"scu"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_release"></a> [release](#input\_release) | A reference to a softwarerepositoryRelease resource. | `set(string)` | `[]` | no |
| <a name="input_release_notes_url"></a> [release\_notes\_url](#input\_release\_notes\_url) | The url for the release notes of this image. | `string` | `""` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Location of the file in an external repository.<br>* CIFS -<br>  - MountOptions - Leave the field blank or enter one or more comma seperated options from the following. For Example, "", "soft", "soft, nounix".  All Options are:<br>    * soft<br>    * nounix<br>    * noserviceino<br>    * guest<br>    * USERNAME=VALUE<br>    * PASSWORD=VALUE<br>    * sec=VALUE (VALUE could be None, Ntlm, Ntlmi, Ntlmssp, Ntlmsspi, Ntlmv2, Ntlmv2i)<br>  - Below is an example CIFS Mount Repository input:<br>    additional\_properties = jsonencode({<br>      FileLocation = ""<br>      MountOptions = ""<br>      Password     = ""<br>      Username     = ""<br>    })<br>    object\_type = "softwarerepository.CifsServer"<br>* HTTP(S):<br>  additional\_properties = jsonencode({<br>    LocationLink = ""<br>    Password     = ""<br>    Username     = ""<br>  })<br>  object\_type = "softwarerepository.HttpServer"<br>* NFS:<br>  - MountOptions - Leave the field blank or enter one or more comma seperated options from the following.For Example, "", "ro", "ro,rw".  All options are:<br>    * ro<br>    * rw<br>    * nolock<br>    * noexec<br>    * soft<br>    * PORT=VALUE<br>    * timeo=VALUE<br>    * retry=VALUE<br>  - Below is an example CIFS Mount Repository input:<br>    additional\_properties = jsonencode({<br>      FileLocation = ""<br>      MountOptions = ""<br>    })<br>    object\_type = "softwarerepository.NfsServer" | <pre>map(object(<br>    {<br>      additional_properties = any<br>      object_type           = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_sha512sum"></a> [sha512sum](#input\_sha512sum) | The sha512sum of the file. This information is available for all Cisco distributed images and files imported to the local repository. | `string` | `""` | no |
| <a name="input_size"></a> [size](#input\_size) | The size (in bytes) of the file. This information is available for all Cisco distributed images and files imported to the local repository. | `number` | `null` | no |
| <a name="input_supported_models"></a> [supported\_models](#input\_supported\_models) | List of Supported UCS Servers/Types.  Examples are:<br>B-Series<br>C-Series<br>UCSB-B200-M5<br>UCSB-B480-M5<br>UCSC-C220-M5SX<br>UCSC-C220-M5SN<br>UCSC-C240-M5SX<br>UCSC-C240-M5SN | `list(string)` | <pre>[<br>  "B-series",<br>  "C-series"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vendor"></a> [vendor](#input\_vendor) | The vendor or publisher of this file.  Options are:<br>* Cisco | `string` | `"Cisco"` | no |
| <a name="input_vendor_version"></a> [vendor\_version](#input\_vendor\_version) | Vendor provided version for the file.  Options are:<br>* 6.0(4c)<br>* 6.1(1b)<br>* 6.1(2d)<br>* 6.1(3c)<br>* 6.2(1a) | `string` | `"6.2(1a)"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Operating System Software Configuration Utility (SCU) Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
