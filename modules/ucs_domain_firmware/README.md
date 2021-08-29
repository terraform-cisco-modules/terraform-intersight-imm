# ucs_domain_firmware - Intersight UCS Domain Firmware Management Terraform Module

## Usage

```hcl
module "ucs_domain_firmware" {

  source = "terraform-cisco-modules/imm/intersight//modules/ucs_domain_firmware"

  # omitted...
}
```

This module will upgrade a pair of Fabric Interconnects.

These resources are consumed

* [UCS Domain Firmware Management](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/firmware_switch_upgrade)

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
| [intersight_firmware_switch_upgrade.upgrade](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/firmware_switch_upgrade) | resource |
| [intersight_firmware_distributable.image](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/firmware_distributable) | data source |
| [intersight_network_element_summary.fi_a](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/network_element_summary) | data source |
| [intersight_network_element_summary.fi_b](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/data-sources/network_element_summary) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_password_direct"></a> [auth\_password\_direct](#input\_auth\_password\_direct) | Password for Direct Download Authentication. | `string` | `""` | no |
| <a name="input_auth_password_filesrv"></a> [auth\_password\_filesrv](#input\_auth\_password\_filesrv) | Password for File Server Authentication. | `string` | `""` | no |
| <a name="input_auth_username_direct"></a> [auth\_username\_direct](#input\_auth\_username\_direct) | Username for Direct Download Authentication. | `string` | `""` | no |
| <a name="input_auth_username_filesrv"></a> [auth\_username\_filesrv](#input\_auth\_username\_filesrv) | Username for File Server Authentication. | `string` | `""` | no |
| <a name="input_cifs_file_location"></a> [cifs\_file\_location](#input\_cifs\_file\_location) | The location to the image file. The accepted format is:<br> - IP-or-hostname/folder1/folder2/…/imageFile | `string` | `""` | no |
| <a name="input_cifs_mount_options"></a> [cifs\_mount\_options](#input\_cifs\_mount\_options) | Mount option (Authentication Protocol) as configured on the CIFS Server. Example:ntlmv2.<br>* none - The default authentication protocol is decided by the endpoint.<br>* ntlm - The external CIFS server is configured with ntlm as the authentication protocol.<br>* ntlmi - Mount options of CIFS file server is ntlmi.<br>* ntlmv2 - Mount options of CIFS file server is ntlmv2.<br>* ntlmv2i - Mount options of CIFS file server is ntlmv2i.<br>* ntlmssp - Mount options of CIFS file server is ntlmssp.<br>* ntlmsspi - Mount options of CIFS file server is ntlmsspi. | `string` | `"none"` | no |
| <a name="input_enable_fabric_evacuation"></a> [enable\_fabric\_evacuation](#input\_enable\_fabric\_evacuation) | The flag to enable or disable fabric evacuation during the switch firmware upgrade. In case of IMM, it is mandatory to have the Fabric Interconnects associated with domain profile for fabric evacuation to happen. | `bool` | `true` | no |
| <a name="input_file_server"></a> [file\_server](#input\_file\_server) | Location of the image in user software repository. | `string` | `""` | no |
| <a name="input_http_image_url"></a> [http\_image\_url](#input\_http\_image\_url) | HTTP/HTTPS link to the image. For a successful upgrade, the remote share server must have network connectivity with the CIMC of the selected devices.  Accepted formats are:<br> - http[s]://server-hostname/share/image<br> - http[s]://serverip/share/image | `string` | `""` | no |
| <a name="input_http_mount_options"></a> [http\_mount\_options](#input\_http\_mount\_options) | Mount option as configured on the HTTP server. Empty if nothing is configured. | `string` | `""` | no |
| <a name="input_image_source"></a> [image\_source](#input\_image\_source) | Source type referring the image to be downloaded from CCO or from a local HTTPS server.<br>* cisco - Image to be downloaded from Cisco software repository.<br>* localHttp - Image to be downloaded from a https server. | `string` | `"cisco"` | no |
| <a name="input_map_type"></a> [map\_type](#input\_map\_type) | File server protocols such as CIFS, NFS, WWW for HTTP (S) that hosts the image.<br>* cifs - File server protocol used is CIFS.<br>* nfs - File server protocol used is NFS.<br>* www - File server protocol used is WWW. | `string` | `"www"` | no |
| <a name="input_nfs_file_location"></a> [nfs\_file\_location](#input\_nfs\_file\_location) | The location to the image file. The accepted format is:<br> - IP-or-hostname/folder1/folder2/…/imageFile | `string` | `""` | no |
| <a name="input_nfs_mount_options"></a> [nfs\_mount\_options](#input\_nfs\_mount\_options) | Mount option as configured on the NFS Server. For example:nolock. | `string` | `""` | no |
| <a name="input_serial_a"></a> [serial\_a](#input\_serial\_a) | Serial Number of Fabric Interconnect A. | `string` | n/a | yes |
| <a name="input_serial_b"></a> [serial\_b](#input\_serial\_b) | Serial Number of Fabric Interconnect B. | `string` | n/a | yes |
| <a name="input_skip_estimate_impact"></a> [skip\_estimate\_impact](#input\_skip\_estimate\_impact) | User has the option to skip the estimate impact calculation. | `bool` | `false` | no |
| <a name="input_software_version"></a> [software\_version](#input\_software\_version) | Version of UCS Software to Apply to the environment. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_upgrade_type"></a> [upgrade\_type](#input\_upgrade\_type) | Desired upgrade mode to choose either direct download based upgrade or network share upgrade.<br>* direct\_upgrade - Upgrade mode is direct download.<br>* network\_upgrade - Upgrade mode is network upgrade. | `string` | `"direct_upgrade"` | no |
| <a name="input_upgradeoption_direct"></a> [upgradeoption\_direct](#input\_upgradeoption\_direct) | Option to control the upgrade, e.g., sd\_upgrade\_mount\_only - download the image into sd and upgrade wait for the server on-next boot.<br>* chassis\_upgrade\_full - Direct upgrade chassis upgrade full.<br>* download\_only - Direct upgrade image download only.<br>* sd\_upgrade\_mount\_only - Direct upgrade SD upgrade mount only.<br>* sd\_download\_only - Direct upgrade SD download only.<br>* sd\_upgrade\_only - Direct upgrade SD upgrade only.<br>* sd\_upgrade\_full - Direct upgrade SD upgrade full.<br>* upgrade\_full - The upgrade downloads or mounts the image, and reboots immediately for an upgrade.<br>* upgrade\_mount\_only - The upgrade downloads or mounts the image. The upgrade happens in next reboot. | `string` | `"sd_upgrade_only"` | no |
| <a name="input_upgradeoption_filesrv"></a> [upgradeoption\_filesrv](#input\_upgradeoption\_filesrv) | Option to control the upgrade operation.  Options are:<br>* nw\_upgrade\_full - Mount the image and immediately run the upgrade.  Network upgrade option for full upgrade.<br>* nw\_upgrade\_mount\_only - Mount the image from a file server and run the upgrade on the next boot.  Network upgrade mount only. | `string` | `"nw_upgrade_full"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
