# ethernet_network_control_policies - Intersight Ethernet Network Control Policy Terraform Module

## Usage

```hcl
module "ethernet_network_control" {

  source = "terraform-cisco-modules/imm/intersight//modules/ethernet_network_control_policies"

  # omitted...
}
```

This module will create an Ethernet (vNIC) Network Control Policy in Intersight.  This can be used to create Profiles and Templates that require a Ethernet Network Control Policy.  

These resources are consumed

* [Ethernet Network Control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_eth_network_control_policy)

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
| [intersight_fabric_eth_network_control_policy.vnic_control](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_eth_network_control_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action_on_uplink_fail"></a> [action\_on\_uplink\_fail](#input\_action\_on\_uplink\_fail) | Determines the state of the virtual interface (vethernet / vfc) on the switch when a suitable uplink is not pinned.  Options are:<br>* linkDown<br>* warning<br>Important! If the Action on Uplink is set to Warning, the switch will not fail over if uplink connectivity is lost. | `string` | `"linkDown"` | no |
| <a name="input_cdp_enable"></a> [cdp\_enable](#input\_cdp\_enable) | Flag to Enable or Disable CDP on an interface. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for the Policy. | `string` | `""` | no |
| <a name="input_lldp_enable_receive"></a> [lldp\_enable\_receive](#input\_lldp\_enable\_receive) | Determines if the LLDP frames can be received by an interface on the switch. | `bool` | `false` | no |
| <a name="input_lldp_enable_transmit"></a> [lldp\_enable\_transmit](#input\_lldp\_enable\_transmit) | Determines if the LLDP frames can be transmitted by an interface on the switch. | `bool` | `false` | no |
| <a name="input_mac_register_mode"></a> [mac\_register\_mode](#input\_mac\_register\_mode) | Determines the MAC addresses that have to be registered with the switch.  Options are:<br>* allVlans<br>* nativeVlanOnly | `string` | `"nativeVlanOnly"` | no |
| <a name="input_mac_security_forge"></a> [mac\_security\_forge](#input\_mac\_security\_forge) | Determines if the MAC forging is allowed or denied on an interface.  Options are:<br>* allow<br>* deny | `string` | `"allow"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the Policy. | `string` | `"vnic_network_control"` | no |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Intersight Organization moid. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Ethernet Network Control Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
