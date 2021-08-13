# domain_uplink_lan_port_channel - Intersight UCS Domain LAN Port Channel Policy Terraform Module

## Usage

```hcl
module "lan_port_channel" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_lan_port_channel"

  # omitted...
}
```

This module will create a UCS Domain LAN Port Channel Policy in Intersight.  This can be used to configure the Uplinks for a UCS Domain.  

These resources are consumed

* [lan_port_channel](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_uplink_pc_role)

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
| [intersight_fabric_uplink_pc_role.port_channel](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_uplink_pc_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_breakout_sw_port"></a> [breakout\_sw\_port](#input\_breakout\_sw\_port) | Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch. | `number` | `0` | no |
| <a name="input_flow_control_moid"></a> [flow\_control\_moid](#input\_flow\_control\_moid) | A reference to a fabricFlowControlPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_lan_uplink_pc_id"></a> [lan\_uplink\_pc\_id](#input\_lan\_uplink\_pc\_id) | Unique Identifier of the port-channel, local to this switch. | `string` | `49` | no |
| <a name="input_lan_uplink_pc_ports"></a> [lan\_uplink\_pc\_ports](#input\_lan\_uplink\_pc\_ports) | List of Ports to Assign to the LAN Port-Channel Policy. | `set(string)` | <pre>[<br>  49,<br>  50<br>]</pre> | no |
| <a name="input_lan_uplink_speed"></a> [lan\_uplink\_speed](#input\_lan\_uplink\_speed) | Admin configured speed for the port.<br>* Auto - Admin configurable speed AUTO ( default ).<br>* 1Gbps - Admin configurable speed 1Gbps.<br>* 10Gbps - Admin configurable speed 10Gbps.<br>* 25Gbps - Admin configurable speed 25Gbps.<br>* 40Gbps - Admin configurable speed 40Gbps.<br>* 100Gbps - Admin configurable speed 100Gbps. | `string` | `"Auto"` | no |
| <a name="input_link_aggregation_moid"></a> [link\_aggregation\_moid](#input\_link\_aggregation\_moid) | A reference to a fabricLinkAggregationPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_link_control_moid"></a> [link\_control\_moid](#input\_link\_control\_moid) | A reference to a fabricLinkControlPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the Switch/FEX/Chassis Interface. | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain LAN Port Channel Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
