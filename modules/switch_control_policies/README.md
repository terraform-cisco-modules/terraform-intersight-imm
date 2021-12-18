# switch_control_policies - Intersight Switch Control Policy Terraform Module

## Usage

```hcl
module "switch_control" {

  source = "terraform-cisco-modules/imm/intersight//modules/switch_control_policies"

  # omitted...
}
```

This module will create a Switch Control Policy in Intersight.  This can be used to create Domain Policies that require a Switch Control Policy.  

These resources are consumed

* [Switch Control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_control_policy)

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
| [intersight_fabric_switch_control_policy.switch_control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_switch_control_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_ethernet_switching_mode"></a> [ethernet\_switching\_mode](#input\_ethernet\_switching\_mode) | Enable or Disable Ethernet End Host Switching Mode.<br>  * end-host - In end-host mode, the fabric interconnects appear to the upstream devices as end hosts with multiple links.  In this mode, the switch does not run Spanning Tree Protocol and avoids loops by following a set of rules for traffic forwarding.  In case of ethernet switching mode - Ethernet end-host mode is also known as Ethernet host virtualizer.<br>  * switch - In switch mode, the switch runs Spanning Tree Protocol to avoid loops, and broadcast and multicast packets are handled in the traditional way.This is the traditional switch mode. | `string` | `"end-host"` | no |
| <a name="input_fc_switching_mode"></a> [fc\_switching\_mode](#input\_fc\_switching\_mode) | Enable or Disable FC End Host Switching Mode.<br>  * end-host - In end-host mode, the fabric interconnects appear to the upstream devices as end hosts with multiple links.  In this mode, the switch does not run Spanning Tree Protocol and avoids loops by following a set of rules for traffic forwarding.  In case of ethernet switching mode - Ethernet end-host mode is also known as Ethernet host virtualizer.<br>  * switch - In switch mode, the switch runs Spanning Tree Protocol to avoid loops, and broadcast and multicast packets are handled in the traditional way.This is the traditional switch mode. | `string` | `"end-host"` | no |
| <a name="input_mac_aging_option"></a> [mac\_aging\_option](#input\_mac\_aging\_option) | This specifies one of the option to configure the MAC address aging time.<br>* Custom - This option allows the the user to configure the MAC address aging time on the switch. For Switch Model UCS-FI-6454 or higher, the valid range is 120 to 918000 seconds and the switch will set the lower multiple of 5 of the given time.<br>* Default - This option sets the default MAC address aging time to 14500 seconds for End Host mode.<br>* Never - This option disables the MAC address aging process and never allows the MAC address entries to get removed from the table. | `string` | `"Default"` | no |
| <a name="input_mac_aging_time"></a> [mac\_aging\_time](#input\_mac\_aging\_time) | Define the MAC address aging time in seconds.  Range is between 120 to 918000, in multiples of 5, when mac\_aging\_option is set to Custom. | `string` | `14500` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"switch_control"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_profiles"></a> [profiles](#input\_profiles) | Map of Profiles to Assign to the Policy.<br>* moid - Managed Object Identifier for the Managed Resource.<br>* object\_type - Object Type to Assign in the Profile Configuration.<br>  - fabric.SwitchProfile - For UCS Domain Switch Profiles. | <pre>map(object(<br>    {<br>      moid        = string<br>      object_type = string<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_udld_message_interval"></a> [udld\_message\_interval](#input\_udld\_message\_interval) | Configures the time between UDLD probe messages on ports that are in advertisement mode and arecurrently determined to be bidirectional.  Valid values are from 7 to 90 seconds. | `number` | `15` | no |
| <a name="input_udld_recovery_action"></a> [udld\_recovery\_action](#input\_udld\_recovery\_action) | UDLD recovery when enabled, attempts to bring an UDLD error-disabled port out of reset.<br>* none - No action is taken when a port has been disabled.<br>* reset - The switch will attempt to bring a UDLD error-disabled port back online. | `string` | `"none"` | no |
| <a name="input_vlan_optimization"></a> [vlan\_optimization](#input\_vlan\_optimization) | To enable or disable the VLAN port count optimization. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Switch Control Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
