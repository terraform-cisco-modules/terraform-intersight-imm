# adapter_configuration_policies - Intersight Adapter Configuration Policy Terraform Module

## Usage

```hcl
module "adapter_configuration" {

  source = "terraform-cisco-modules/imm/intersight//modules/adapter_configuration_policies"

  # omitted...
}
```

This module will create an Adapter Configuration Policy in Intersight.  This can be used to create Profiles and Templates that require a Adapter Configuration Policy.  

These resources are consumed

* [Adapter Configuration](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/adapter_config_policy)

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
| [intersight_adapter_config_policy.vic_adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/adapter_config_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_fip"></a> [enable\_fip](#input\_enable\_fip) | Status of FIP protocol on the adapter interfaces. | `bool` | `true` | no |
| <a name="input_enable_lldp"></a> [enable\_lldp](#input\_enable\_lldp) | Status of LLDP protocol on the adapter interfaces. | `bool` | `true` | no |
| <a name="input_enable_port_channel"></a> [enable\_port\_channel](#input\_enable\_port\_channel) | When Port Channel is enabled, two vNICs and two vHBAs are available for use on the adapter card.<br>When disabled, four vNICs and four vHBAs are available for use on the adapter card. Disabling<br>port channel reboots the server. Port Channel is supported only for Cisco VIC 1455/1457 adapters. | `bool` | `true` | no |
| <a name="input_fec_mode_1"></a> [fec\_mode\_1](#input\_fec\_mode\_1) | DCE Interface 1 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_fec_mode_2"></a> [fec\_mode\_2](#input\_fec\_mode\_2) | DCE Interface 2 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_fec_mode_3"></a> [fec\_mode\_3](#input\_fec\_mode\_3) | DCE Interface 3 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_fec_mode_4"></a> [fec\_mode\_4](#input\_fec\_mode\_4) | DCE Interface 4 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vic_adapter"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_pci_slot"></a> [pci\_slot](#input\_pci\_slot) | PCIe slot where the VIC adapter is installed. Supported values are (1-15) and MLOM. | `string` | `"MLOM"` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Adapter (VIC) Configuration Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
