# snmp_policies - Intersight SNMP Policy Terraform Module

## Usage

```hcl
module "snmp_policy" {

  source = "terraform-cisco-modules/imm/intersight//modules/snmp_policies"

  # omitted...
}
```

This module will create an SNMP Policy in Intersight.  This can be used to create Domains, Profiles, and Templates that require an SNMP Policy.  

These resources are consumed

* [SNMP Policy](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/snmp_policy)

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
| <a name="input_access_community_string"></a> [access\_community\_string](#input\_access\_community\_string) | The default SNMPv1, SNMPv2c community name or SNMPv3 username to include on any trap messages sent to the SNMP host. The name can be 18 characters long. | `string` | `""` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_enable_snmp"></a> [enable\_snmp](#input\_enable\_snmp) | State of the SNMP Policy on the endpoint. If enabled, the endpoint sends SNMP traps to the designated host. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"snmp"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - chassis.Profile - For UCS Chassis Profiles.<br>  - fabric.SwitchProfile - For UCS Domain Switch Profiles.<br>  - server.Profile - For UCS Server Profiles.<br>  - server.ProfileTemplate - For UCS Server Profile Templates. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_snmp_auth_password_1"></a> [snmp\_auth\_password\_1](#input\_snmp\_auth\_password\_1) | SNMPv3 User Authentication Password. | `string` | `""` | no |
| <a name="input_snmp_auth_password_2"></a> [snmp\_auth\_password\_2](#input\_snmp\_auth\_password\_2) | SNMPv3 User Authentication Password. | `string` | `""` | no |
| <a name="input_snmp_auth_password_3"></a> [snmp\_auth\_password\_3](#input\_snmp\_auth\_password\_3) | SNMPv3 User Authentication Password. | `string` | `""` | no |
| <a name="input_snmp_auth_password_4"></a> [snmp\_auth\_password\_4](#input\_snmp\_auth\_password\_4) | SNMPv3 User Authentication Password. | `string` | `""` | no |
| <a name="input_snmp_auth_password_5"></a> [snmp\_auth\_password\_5](#input\_snmp\_auth\_password\_5) | SNMPv3 User Authentication Password. | `string` | `""` | no |
| <a name="input_snmp_community_access"></a> [snmp\_community\_access](#input\_snmp\_community\_access) | Controls access to the information in the inventory tables. Applicable only for SNMPv1 and SNMPv2c users.<br>* Disabled - Blocks access to the information in the inventory tables.<br>* Full - Full access to read the information in the inventory tables.<br>* Limited - Partial access to read the information in the inventory tables. | `string` | `"Full"` | no |
| <a name="input_snmp_community_string_1"></a> [snmp\_community\_string\_1](#input\_snmp\_community\_string\_1) | SNMP Trap Destination Community. | `string` | `""` | no |
| <a name="input_snmp_community_string_2"></a> [snmp\_community\_string\_2](#input\_snmp\_community\_string\_2) | SNMP Trap Destination Community. | `string` | `""` | no |
| <a name="input_snmp_community_string_3"></a> [snmp\_community\_string\_3](#input\_snmp\_community\_string\_3) | SNMP Trap Destination Community. | `string` | `""` | no |
| <a name="input_snmp_community_string_4"></a> [snmp\_community\_string\_4](#input\_snmp\_community\_string\_4) | SNMP Trap Destination Community. | `string` | `""` | no |
| <a name="input_snmp_community_string_5"></a> [snmp\_community\_string\_5](#input\_snmp\_community\_string\_5) | SNMP Trap Destination Community. | `string` | `""` | no |
| <a name="input_snmp_engine_input_id"></a> [snmp\_engine\_input\_id](#input\_snmp\_engine\_input\_id) | Unique string to identify the device for administration purpose. This is generated from the SNMP Input Engine ID if it is already defined, else it is derived from the BMC serial number. | `string` | `""` | no |
| <a name="input_snmp_port"></a> [snmp\_port](#input\_snmp\_port) | Port on which Cisco IMC SNMP agent runs. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269).  Default is 161. | `number` | `161` | no |
| <a name="input_snmp_privacy_password_1"></a> [snmp\_privacy\_password\_1](#input\_snmp\_privacy\_password\_1) | SNMPv3 User Privacy Password. | `string` | `""` | no |
| <a name="input_snmp_privacy_password_2"></a> [snmp\_privacy\_password\_2](#input\_snmp\_privacy\_password\_2) | SNMPv3 User Privacy Password. | `string` | `""` | no |
| <a name="input_snmp_privacy_password_3"></a> [snmp\_privacy\_password\_3](#input\_snmp\_privacy\_password\_3) | SNMPv3 User Privacy Password. | `string` | `""` | no |
| <a name="input_snmp_privacy_password_4"></a> [snmp\_privacy\_password\_4](#input\_snmp\_privacy\_password\_4) | SNMPv3 User Privacy Password. | `string` | `""` | no |
| <a name="input_snmp_privacy_password_5"></a> [snmp\_privacy\_password\_5](#input\_snmp\_privacy\_password\_5) | SNMPv3 User Privacy Password. | `string` | `""` | no |
| <a name="input_snmp_trap_community_1"></a> [snmp\_trap\_community\_1](#input\_snmp\_trap\_community\_1) | Community for a Trap Destination. | `string` | `""` | no |
| <a name="input_snmp_trap_community_2"></a> [snmp\_trap\_community\_2](#input\_snmp\_trap\_community\_2) | Community for a Trap Destination. | `string` | `""` | no |
| <a name="input_snmp_trap_community_3"></a> [snmp\_trap\_community\_3](#input\_snmp\_trap\_community\_3) | Community for a Trap Destination. | `string` | `""` | no |
| <a name="input_snmp_trap_community_4"></a> [snmp\_trap\_community\_4](#input\_snmp\_trap\_community\_4) | Community for a Trap Destination. | `string` | `""` | no |
| <a name="input_snmp_trap_community_5"></a> [snmp\_trap\_community\_5](#input\_snmp\_trap\_community\_5) | Community for a Trap Destination. | `string` | `""` | no |
| <a name="input_snmp_trap_destinations"></a> [snmp\_trap\_destinations](#input\_snmp\_trap\_destinations) | List of SNMP Trap Destinations to Assign to the Policy.<br>key - Hostname of the Trap Destination<br>* community\_string - Default is 0.  A number Between 1-5 to denote to use one of the variables snmp\_auth\_password\_[1-5].  Any other number means no community string.<br>* enable - Default is true.  Enables/disables the trap on the server If enabled, trap is active on the server.<br>* port - Default is 162.  Port used by the server to communicate with the trap destination. Enter a value between 1-65535. Reserved ports not allowed (22, 23, 80, 123, 389, 443, 623, 636, 2068, 3268, 3269).<br>* user - SNMP user for the trap. Applicable only to SNMPv3.<br>* trap\_type - Type of trap which decides whether to receive a notification when a trap is received at the destination.<br>  - Inform - Receive notifications when trap is sent to the destination. This option is valid only for SNMPv2.<br>  - Trap - Do not receive notifications when trap is sent to the destination. | <pre>map(object(<br>    {<br>      community_string = optional(string)<br>      enable           = optional(bool)<br>      port             = optional(number)<br>      user             = optional(string)<br>      trap_type        = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_snmp_users"></a> [snmp\_users](#input\_snmp\_users) | List of SNMP Users to Assign to the SNMP Policy.<br>key - Name of the SNMP User.<br>* auth\_password - Default is 0.  A number Between 1-5 to denote to use one of the variables snmp\_auth\_password\_[1-5].  Any other number means no authentication password.<br>* Authorization protocol for authenticating the user.  Currently Options are:<br>  - MD5<br>  - SHA (Default)<br>Note: In the future these options will be added.<br>  - NA - Authentication protocol is not applicable.<br>  - SHA-224 - SHA-224 protocol is used to authenticate SNMP user.<br>  - SHA-256 - SHA-256 protocol is used to authenticate SNMP user.<br>  - SHA-384 - SHA-384 protocol is used to authenticate SNMP user.<br>  - SHA-512 - SHA-512 protocol is used to authenticate SNMP user.<br>* privacy\_password - Default is 0.  A number Between 1-5 to denote to use one of the variables snmp\_privacy\_password\_[1-5].  Any other number means no Privacy password.<br>* privacy\_type - Privacy protocol for the user.<br>  - AES - AES privacy protocol is used for SNMP user.<br>  - DES - DES privacy protocol is used for SNMP user.<br>  - NA - Privacy protocol is not applicable.<br>* security\_level - Security mechanism used for communication between agent and manager.<br> - AuthNoPriv - The user requires an authorization password but not a privacy password.<br> - AuthPriv (Default) - The user requires both an authorization password and a privacy password.<br> - NoAuthNoPriv - The user does not require an authorization or privacy password. | <pre>map(object(<br>    {<br>      auth_password    = optional(number)<br>      auth_type        = optional(string)<br>      privacy_password = optional(number)<br>      privacy_type     = optional(string)<br>      security_level   = optional(string)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_system_contact"></a> [system\_contact](#input\_system\_contact) | Contact person responsible for the SNMP implementation. Enter a string up to 64 characters, such as an email address or a name and telephone number. | `string` | `""` | no |
| <a name="input_system_location"></a> [system\_location](#input\_system\_location) | Location of host on which the SNMP agent (server) runs. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_trap_community_string"></a> [trap\_community\_string](#input\_trap\_community\_string) | SNMP community group used for sending SNMP trap to other devices. Valid only for SNMPv2c. | `string` | `""` | no |
| <a name="input_v2_enabled"></a> [v2\_enabled](#input\_v2\_enabled) | State of the SNMPv2c on the endpoint. If enabled, the endpoint sends SNMPv2c properties to the designated host. | `bool` | `true` | no |
| <a name="input_v3_enabled"></a> [v3\_enabled](#input\_v3\_enabled) | State of the SNMPv3 on the endpoint. If enabled, the endpoint sends SNMPv3 properties to the designated host. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | SNMP Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
