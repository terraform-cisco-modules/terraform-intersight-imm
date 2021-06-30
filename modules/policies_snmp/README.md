# policies_snmp - Intersight SNMP Policy Terraform Module

## Usage

```hcl
module "imc_snmp_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/policies_snmp"

  # omitted...
}
```

This module will create an SNMP Policy in Intersight.  This can be used to create Domains, Profiles, and Templates that require an SNMP Policy.  

These resources are consumed

* [snmp_policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/snmp_policy)

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
| [intersight_snmp_policy.snmp](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/snmp_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | State of the SNMP Policy on the endpoint. If enabled, the endpoint sends SNMP traps to the designated host. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"snmp"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_snmp_access"></a> [snmp\_access](#input\_snmp\_access) | Controls access to the information in the inventory tables. Applicable only for SNMPv1 and SNMPv2c users.<br> * Disabled - Blocks access to the information in the inventory tables.<br> * Limited - Partial access to read the information in the inventory tables.<br> * Full - Full access to read the information in the inventory tables. | `string` | `"Full"` | no |
| <a name="input_snmp_community"></a> [snmp\_community](#input\_snmp\_community) | The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long. | `string` | `""` | no |
| <a name="input_snmp_engine_id"></a> [snmp\_engine\_id](#input\_snmp\_engine\_id) | Unique string to identify the device for administration purpose. This is generated from the SNMP Input Engine ID if it is already defined, else it is derived from the BMC serial number. | `string` | `""` | no |
| <a name="input_snmp_port"></a> [snmp\_port](#input\_snmp\_port) | Port on which Cisco IMC SNMP agent runs. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269).  Default is 161. | `number` | `161` | no |
| <a name="input_snmp_traps"></a> [snmp\_traps](#input\_snmp\_traps) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_snmp_users"></a> [snmp\_users](#input\_snmp\_users) | List of Profiles to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_system_contact"></a> [system\_contact](#input\_system\_contact) | Contact person responsible for the SNMP implementation. Enter a string up to 64 characters, such as an email address or a name and telephone number. | `string` | `""` | no |
| <a name="input_system_location"></a> [system\_location](#input\_system\_location) | Location of host on which the SNMP agent (server) runs. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_trap_community"></a> [trap\_community](#input\_trap\_community) | SNMP community group used for sending SNMP trap to other devices. Valid only for SNMPv2c. | `string` | `""` | no |
| <a name="input_v2_enabled"></a> [v2\_enabled](#input\_v2\_enabled) | State of the SNMPv2c on the endpoint. If enabled, the endpoint sends SNMPv2c properties to the designated host. | `bool` | `true` | no |
| <a name="input_v3_enabled"></a> [v3\_enabled](#input\_v3\_enabled) | State of the SNMPv3 on the endpoint. If enabled, the endpoint sends SNMPv3 properties to the designated host. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | SNMP Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
