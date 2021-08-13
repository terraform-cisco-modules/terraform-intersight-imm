# policies_vic_adapter - Intersight Adapter (VIC) Configuration Policy Terraform Module

## Usage

```hcl
module "vic_adapter" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_vic_adapter"

  # omitted...
}
```

This module will create an Adapter (VIC) Configuration Policy in Intersight.  This can be used to create Profiles and Templates that require a Adapter (VIC) Configuration Policy.  

These resources are consumed

* [vic_adapter](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/adapter_config_policy)

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
| <a name="input_fip_enabled"></a> [fip\_enabled](#input\_fip\_enabled) | Enables advanced filtering on the interface. | `bool` | `true` | no |
| <a name="input_int0_fec_mode"></a> [int0\_fec\_mode](#input\_int0\_fec\_mode) | Interface 0 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_int1_fec_mode"></a> [int1\_fec\_mode](#input\_int1\_fec\_mode) | Interface 1 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_int2_fec_mode"></a> [int2\_fec\_mode](#input\_int2\_fec\_mode) | Interface 2 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_int3_fec_mode"></a> [int3\_fec\_mode](#input\_int3\_fec\_mode) | Interface 3 Forward Error Correction (FEC) mode setting for the DCE interfaces of the adapter. FEC mode setting is supported only for Cisco VIC 14xx adapters. FEC mode 'cl74' is unsupported for Cisco VIC 1495/1497. This setting will be ignored for unsupported adapters and for unavailable DCE interfaces.<br>* cl74 - Use cl74 standard as FEC mode setting. 'Clause 74' aka FC-FEC ('FireCode' FEC) offers simple, low-latency protection against 1 burst/sparse bit error, but it is not good for random errors.<br>* cl91 - Use cl91 standard as FEC mode setting. 'Clause 91' aka RS-FEC ('ReedSolomon' FEC) offers better error protection against bursty and random errors but adds latency.<br>* Off - Disable FEC mode on the DCE Interface. | `string` | `"cl91"` | no |
| <a name="input_lldp_enabled"></a> [lldp\_enabled](#input\_lldp\_enabled) | Status of Accelerated Receive Flow Steering on the virtual ethernet interface. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vic_adapter"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_portchannel_enabled"></a> [portchannel\_enabled](#input\_portchannel\_enabled) | When Port Channel is enabled, two vNICs and two vHBAs are available for use on the adapter card. When disabled, four vNICs and four vHBAs are available for use on the adapter card. Disabling port channel reboots the server. Port Channel is supported only for Cisco VIC 1455/1457 adapters. | `bool` | `true` | no |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `set(string)` | `[]` | no |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | PCIe slot where the VIC adapter is installed. Supported values are (1-15) and MLOM. | `string` | `"MLOM"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Adapter (VIC) Configuration Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
