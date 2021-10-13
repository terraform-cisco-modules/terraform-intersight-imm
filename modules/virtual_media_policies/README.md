# virtual_media_policies - Intersight Virtual Media Policy Terraform Module

## Usage

```hcl
module "virtual_media" {

  source = "terraform-cisco-modules/imm/intersight//modules/virtual_media_policies"

  # omitted...
}
```

This module will create a vMedia Policy in Intersight.  This can be used to create Profiles and Templates that require a vMedia Policy.  

These resources are consumed

* [Virtual Media Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vmedia_policy)

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
| [intersight_vmedia_policy.vmedia](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/vmedia_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_low_power_usb"></a> [enable\_low\_power\_usb](#input\_enable\_low\_power\_usb) | If enabled, the virtual drives appear on the boot selection menu after mapping the image and rebooting the host. | `bool` | `false` | no |
| <a name="input_enable_virtual_media"></a> [enable\_virtual\_media](#input\_enable\_virtual\_media) | Flag to Enable or Disable the Policy. | `bool` | `true` | no |
| <a name="input_enable_virtual_media_encryption"></a> [enable\_virtual\_media\_encryption](#input\_enable\_virtual\_media\_encryption) | If enabled, allows encryption of all Virtual Media communications. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vmedia"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vmedia_mounts"></a> [vmedia\_mounts](#input\_vmedia\_mounts) | Key - Name of the Virtual Media Mount<br>* authentication\_protocol - Type of Authentication protocol when CIFS is used for communication with the remote server.<br>  - none - (Default) No authentication is used.<br>  - ntlm - NT LAN Manager (NTLM) security protocol. Use this option only with Windows 2008 R2 and Windows 2012 R2.<br>  - ntlmi - NTLMi security protocol. Use this option only when you enable Digital Signing in the CIFS Windows server.<br>  - ntlmv2 - NTLMv2 security protocol. Use this option only with Samba Linux.<br>  - ntlmv2i - NTLMv2i security protocol. Use this option only with Samba Linux.<br>  - ntlmssp - NT LAN Manager Security Support Provider (NTLMSSP) protocol. Use this option only with Windows 2008 R2 and Windows 2012 R2.<br>  - ntlmsspi - NTLMSSPi protocol. Use this option only when you enable Digital Signing in the CIFS Windows server.<br>* device\_type - Type of remote Virtual Media device.<br>  - cdd - (Default) Uses compact disc drive as the virtual media mount device.<br>  - hdd - Uses hard disk drive as the virtual media mount device.<br>* file\_location - The remote file location path for the virtual media mapping. Accepted formats are:<br>  - HDD for CIFS/NFS: hostname-or-IP/filePath/fileName.img<br>  - CDD for CIFS/NFS: hostname-or-IP/filePath/fileName.iso<br>  - HDD for HTTP/S: http[s]://hostname-or-IP/filePath/fileName.img<br>  - CDD for HTTP/S: http[s]://hostname-or-IP/filePath/fileName.iso<br>* mount\_options - Mount options for the Virtual Media mapping. The field can be left blank or filled in a comma separated list with the following options.<br>  - For NFS, supported options are:<br>    * ro<br>    * rw<br>    * nolock<br>    * noexec<br>    * soft<br>    * port=VALUE<br>    * timeo=VALUE<br>    * retry=VALUE<br>  - For CIFS, supported options are:<br>    * soft<br>    * nounix<br>    * noserverino<br>    * guest<br>    Note: For CIFS version less than 3.0, vers=VALUE is mandatory. e.g. vers=2.0<br>  - For HTTP/HTTPS, the only supported option is:<br>    * noauto<br>* password - A Number used in the loop to point to the variable "vmedia\_password\_[1-5]".  So 1 would be vmedia\_password\_1.  Sensitive Values are not supported in a loop<br>* protocol - Protocol to use to communicate with the remote server.<br>  - nfs - NFS protocol for vmedia mount.<br>  - cifs - CIFS protocol for vmedia mount.<br>  - http - HTTP protocol for vmedia mount.<br>  - https - HTTPS protocol for vmedia mount.<br>* username - Username to log in to the remote server, if authentication is enabled. | <pre>map(object(<br>    {<br>      authentication_protocol = optional(string)<br>      device_type             = optional(string)<br>      file_location           = string<br>      mount_options           = optional(string)<br>      password                = optional(number)<br>      protocol                = optional(string)<br>      username                = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_vmedia_password_1"></a> [vmedia\_password\_1](#input\_vmedia\_password\_1) | Password for vMedia | `string` | `""` | no |
| <a name="input_vmedia_password_2"></a> [vmedia\_password\_2](#input\_vmedia\_password\_2) | Password for vMedia | `string` | `""` | no |
| <a name="input_vmedia_password_3"></a> [vmedia\_password\_3](#input\_vmedia\_password\_3) | Password for vMedia | `string` | `""` | no |
| <a name="input_vmedia_password_4"></a> [vmedia\_password\_4](#input\_vmedia\_password\_4) | Password for vMedia | `string` | `""` | no |
| <a name="input_vmedia_password_5"></a> [vmedia\_password\_5](#input\_vmedia\_password\_5) | Password for vMedia | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | vMedia Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
