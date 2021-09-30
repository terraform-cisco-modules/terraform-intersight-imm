# operating_system_repository - Intersight Operating System Repository Terraform Module

## Usage

```hcl
module "operating_system_repository" {

  source = "terraform-cisco-modules/imm/intersight//modules/operating_system_repository"

  # omitted...
}
```

This module will create an Operating System Repository in Intersight.  This can be used to Install an operating system on a Bare Metal Server.  

These resources are consumed

* [Repository](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/softwarerepository_operating_system_file)

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
| [intersight_softwarerepository_operating_system_file.repository](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/softwarerepository_operating_system_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_catalog"></a> [catalog](#input\_catalog) | A reference to a softwarerepositoryCatalog resource. | <pre>list(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_import_action"></a> [import\_action](#input\_import\_action) | The action to be performed on the imported file. If 'PreCache' is set, the image will be cached in Appliance. Applicable in Intersight appliance deployment. If 'Evict' is set, the cached file will be removed. Applicable in Intersight appliance deployment. If 'GeneratePreSignedUploadUrl' is set, generates pre signed URL (s) for the file to be imported into the repository. Applicable for local machine source. The URL (s) will be populated under LocalMachine file server. If 'CompleteImportProcess' is set, the ImportState is marked as 'Imported'. Applicable for local machine source. If 'Cancel' is set, the ImportState is marked as 'Failed'. Applicable for local machine source.<br>* None - No action should be taken on the imported file.<br>* Cancel - The cancel import process for the file into the repository.<br>* CompleteImportProcess - Mark that the import process of the file into the repository is complete.<br>* Extract - The action to extract the file in the external repository.<br>* Evict - Evict the cached file from the Intersight Appliance.<br>* GeneratePreSignedDownloadUrl - Generate pre signed URL of file in the repository to download.<br>* GeneratePreSignedUploadUrl - Generate pre signed URL of file for importing into the repository.<br>* MarkImportFailed - Mark to indicate that the import process of the file into the repository failed.<br>* PreCache - Cache the file into the Intersight Appliance. | `string` | `""` | no |
| <a name="input_md5sum"></a> [md5sum](#input\_md5sum) | The md5sum checksum of the file. This information is available for all Cisco distributed images and files imported to the local repository. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"repository"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Location of the file in an external repository.<br>* CIFS -<br>  - MountOptions - Leave the field blank or enter one or more comma seperated options from the following. For Example, "", "soft", "soft, nounix".  All Options are:<br>    * soft<br>    * nounix<br>    * noserviceino<br>    * guest<br>    * USERNAME=VALUE<br>    * PASSWORD=VALUE<br>    * sec=VALUE (VALUE could be None, Ntlm, Ntlmi, Ntlmssp, Ntlmsspi, Ntlmv2, Ntlmv2i)<br>  - Below is an example CIFS Mount Repository input:<br>    additional\_properties = jsonencode({<br>      FileLocation = ""<br>      MountOptions = ""<br>      Password     = ""<br>      Username     = ""<br>    })<br>    object\_type = "softwarerepository.CifsServer"<br>* HTTP(S):<br>  additional\_properties = jsonencode({<br>    LocationLink = ""<br>    Password     = ""<br>    Username     = ""<br>  })<br>  object\_type = "softwarerepository.HttpServer"<br>* NFS:<br>  - MountOptions - Leave the field blank or enter one or more comma seperated options from the following.For Example, "", "ro", "ro,rw".  All options are:<br>    * ro<br>    * rw<br>    * nolock<br>    * noexec<br>    * soft<br>    * PORT=VALUE<br>    * timeo=VALUE<br>    * retry=VALUE<br>  - Below is an example CIFS Mount Repository input:<br>    additional\_properties = jsonencode({<br>      FileLocation = ""<br>      MountOptions = ""<br>    })<br>    object\_type = "softwarerepository.NfsServer" | <pre>map(object(<br>    {<br>      additional_properties = any<br>      object_type           = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_sha512sum"></a> [sha512sum](#input\_sha512sum) | The sha512sum of the file. This information is available for all Cisco distributed images and files imported to the local repository. | `string` | `""` | no |
| <a name="input_size"></a> [size](#input\_size) | The size (in bytes) of the file. This information is available for all Cisco distributed images and files imported to the local repository. | `number` | `null` | no |
| <a name="input_software_advisory_url"></a> [software\_advisory\_url](#input\_software\_advisory\_url) | The software advisory, if any, provided by the vendor for this file. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vendor"></a> [vendor](#input\_vendor) | The vendor or publisher of this file.  Options are:<br>* CentOS<br>* Citrix<br>* Microsoft<br>* Oracle<br>* Red Hat<br>* SuSE<br>* Ubuntu<br>* VMware | `string` | `"VMware"` | no |
| <a name="input_vendor_version"></a> [vendor\_version](#input\_vendor\_version) | Vendor provided version for the file.  Options are:<br>* CentOS<br>  - CentOS 6.5<br>  - CentOS 6.6<br>  - CentOS 6.7<br>  - CentOS 6.8<br>  - CentOS 6.9<br>  - CentOS 6.10<br>  - CentOS 7.0<br>  - CentOS 7.1<br>  - CentOS 7.2<br>  - CentOS 7.3<br>  - CentOS 7.4<br>  - CentOS 7.5<br>  - CentOS 7.6<br>  - CentOS 7.7<br>  - CentOS 7.8<br>  - CentOS 7.9<br>  - CentOS 8.0<br>  - CentOS 8.1<br>  - CentOS 8.2<br>  - CentOS 8.3<br>* Citrix<br>  - Citrix Hypervisor 8.0<br>  - Citrix Hypervisor 8.1<br>  - Citrix Hypervisor 8.2 LTSR<br>  - XenServer 6.1<br>  - XenServer 6.2<br>  - XenServer 6.5<br>  - XenServer 6.5 SP1<br>  - XenServer 7.0<br>  - XenServer 7.1<br>  - XenServer 7.1 LTSR<br>  - XenServer 7.2<br>  - XenServer 7.3<br>  - XenServer 7.4<br>  - XenServer 7.5<br>  - XenServer 7.6<br>* Microsoft<br>  - Windows Server 2008 R2 SP1<br>  - Windows Server 2012<br>  - Windows Server 2012 R2<br>  - Windows Server 2016<br>  - Windows Server 2019<br>  - Windows Server 2022<br>* Oracle<br>  - OVM 3.2.9<br>  - OVM 3.2.10<br>  - OVM 3.2.11<br>  - OVM 3.3.1<br>  - OVM 3.3.2<br>  - OVM 3.3.3<br>  - OVM 3.3.4<br>  - OVM 3.3.5<br>  - OVM 3.4.1<br>  - OVM 3.4.2<br>  - OVM 3.4.3<br>  - OVM 3.4.4<br>  - OVM 3.4.5<br>  - OVM 3.4.6<br>  - OVM 3.4.7<br>  - Oracle Linux (UEK 2.6.39-400.x)<br>  - Oracle Linux (UEK 3.8.13-26.x)<br>  - Oracle Linux (UEK 3.8.13-44.x)<br>  - Oracle Linux (UEK 3.8.13-68.x)<br>  - Oracle Linux (UEK 3.8.13-98.x)<br>  - Oracle Linux (UEK 3.8.13-118.x)<br>  - Oracle Linux (UEK 4.1.12-32.x)<br>  - Oracle Linux (UEK 4.1.12-37.x)<br>  - Oracle Linux (UEK 4.1.12-61.x)<br>  - Oracle Linux (UEK 4.1.12-94.x)<br>  - Oracle Linux (UEK 4.1.12-103.x)<br>  - Oracle Linux (UEK 4.1.12-112.x)<br>  - Oracle Linux (UEK 4.1.12-124.x)<br>  - Oracle Linux (UEK 4.14.35-1818.x)<br>  - Oracle Linux (UEK 4.14.35-1844.x)<br>  - Oracle Linux (UEK 4.14.35-1902.x)<br>  - Oracle Linux (UEK 4.14.35-2025.x)<br>  - Oracle Linux (UEK 4.14.35-2047.x)<br>  - Oracle Linux (UEK 5.4.17-2011.x)<br>  - Oracle Linux (UEK 5.4.17-2036.x)<br>* Red Hat<br>  - Red Hat Enterprise Linux 5.9<br>  - Red Hat Enterprise Linux 5.10<br>  - Red Hat Enterprise Linux 5.11<br>  - Red Hat Enterprise Linux 6.4<br>  - Red Hat Enterprise Linux 6.5<br>  - Red Hat Enterprise Linux 6.6<br>  - Red Hat Enterprise Linux 6.7<br>  - Red Hat Enterprise Linux 6.8<br>  - Red Hat Enterprise Linux 6.9<br>  - Red Hat Enterprise Linux 6.10<br>  - Red Hat Enterprise Linux 7.0<br>  - Red Hat Enterprise Linux 7.1<br>  - Red Hat Enterprise Linux 7.2<br>  - Red Hat Enterprise Linux 7.3<br>  - Red Hat Enterprise Linux 7.4<br>  - Red Hat Enterprise Linux 7.5<br>  - Red Hat Enterprise Linux 7.6<br>  - Red Hat Enterprise Linux 7.7<br>  - Red Hat Enterprise Linux 7.8<br>  - Red Hat Enterprise Linux 7.9<br>  - Red Hat Enterprise Linux 8.0<br>  - Red Hat Enterprise Linux 8.1<br>  - Red Hat Enterprise Linux 8.2<br>  - Red Hat Enterprise Linux 8.3<br>  - Red Hat Enterprise Linux 8.4<br>* SuSE<br>  - SUSE Linux Enterprise Server 11.3<br>  - SUSE Linux Enterprise Server 11.4<br>  - SUSE Linux Enterprise Server 12.1<br>  - SUSE Linux Enterprise Server 12.2<br>  - SUSE Linux Enterprise Server 12.3<br>  - SUSE Linux Enterprise Server 12.3 w/kernel 4.4.126\_94.22-1<br>  - SUSE Linux Enterprise Server 12.4<br>  - SUSE Linux Enterprise Server 12.5<br>  - SUSE Linux Enterprise Server 15<br>  - SUSE Linux Enterprise Server 15.1<br>  - SUSE Linux Enterprise Server 15.2<br>  - SUSE Linux Enterprise Server 15.3<br>* Ubuntu<br>  - Ubuntu Server 12.04.4 LTS<br>  - Ubuntu Server 12.04.5 LTS<br>  - Ubuntu Server 14.04 LTS<br>  - Ubuntu Server 14.04.1 LTS<br>  - Ubuntu Server 14.04.2 LTS<br>  - Ubuntu Server 14.04.3 LTS<br>  - Ubuntu Server 14.04.4 LTS<br>  - Ubuntu Server 14.04.5 LTS<br>  - Ubuntu Server 16.04 LTS<br>  - Ubuntu Server 16.04.1 LTS<br>  - Ubuntu Server 16.04.2 LTS<br>  - Ubuntu Server 16.04.3 LTS<br>  - Ubuntu Server 16.04.4 LTS<br>  - Ubuntu Server 16.04.5 LTS<br>  - Ubuntu Server 16.04.6 LTS<br>  - Ubuntu Server 16.04.7 LTS<br>  - Ubuntu Server 18.04 LTS<br>  - Ubuntu Server 18.04.1 LTS<br>  - Ubuntu Server 18.04.2 LTS<br>  - Ubuntu Server 18.04.3 LTS<br>  - Ubuntu Server 18.04.4 LTS<br>  - Ubuntu Server 18.04.5 LTS<br>  - Ubuntu Server 20.04 LTS<br>  - Ubuntu Server 20.04.1 LTS<br>  - Ubuntu Server 20.04.2 LTS<br>* VMware<br>  - ESXi 5.1 U1<br>  - ESXi 5.1 U2<br>  - ESXi 5.1 U3<br>  - ESXi 5.5<br>  - ESXi 5.5 U1<br>  - ESXi 5.5 U2<br>  - ESXi 5.5 U3<br>  - ESXi 6.0<br>  - ESXi 6.0 U1<br>  - ESXi 6.0 U2<br>  - ESXi 6.0 U3<br>  - ESXi 6.5<br>  - ESXi 6.5 U1<br>  - ESXi 6.5 U2<br>  - ESXi 6.5 U3<br>  - ESXi 6.7<br>  - ESXi 6.7 U1<br>  - ESXi 6.7 U2<br>  - ESXi 6.7 U3<br>  - ESXi 7.0<br>  - ESXi 7.0 U1<br>  - ESXi 7.0 U2 | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Operating System Repository Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
