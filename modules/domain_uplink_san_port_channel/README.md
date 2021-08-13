# domain_uplink_san_port_channel - Intersight UCS Domain SAN Port Channel Policy Terraform Module

## Usage

```hcl
module "san_port_channel" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_uplink_san_port_channel"

  # omitted...
}
```

This module will create a UCS Domain SAN Port Channel Policy in Intersight.  This can be used to configure the Uplinks for a UCS Domain.  

These resources are consumed

* [san_port_channel](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_uplink_pc_role)

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
| [intersight_fabric_fc_uplink_pc_role.port_channel](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fc_uplink_pc_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_breakout_sw_port"></a> [breakout\_sw\_port](#input\_breakout\_sw\_port) | Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch. | `number` | `0` | no |
| <a name="input_fill_pattern"></a> [fill\_pattern](#input\_fill\_pattern) | Fill pattern to differentiate the configs in NPIV.<br>* Arbff - Fc Fill Pattern type Arbff.<br>* Idle - Fc Fill Pattern type Idle. | `string` | `"Idle"` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_san_uplink_pc_id"></a> [san\_uplink\_pc\_id](#input\_san\_uplink\_pc\_id) | Unique Identifier of the port-channel, local to this switch. | `string` | `1` | no |
| <a name="input_san_uplink_pc_ports"></a> [san\_uplink\_pc\_ports](#input\_san\_uplink\_pc\_ports) | List of Ports to Assign to the SAN Port-Channel Policy. | `set(string)` | <pre>[<br>  1,<br>  2<br>]</pre> | no |
| <a name="input_san_uplink_speed"></a> [san\_uplink\_speed](#input\_san\_uplink\_speed) | Admin configured speed for the port.<br>* Auto - Admin configurable speed AUTO ( default ).<br>* 8Gbps - Admin configurable speed 8Gbps.<br>* 16Gbps - Admin configurable speed 16Gbps.<br>* 32Gbps - Admin configurable speed 32Gbps. | `string` | `"16Gbps"` | no |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the Switch/FEX/Chassis Interface. | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vsan_id"></a> [vsan\_id](#input\_vsan\_id) | Virtual San Identifier associated to the FC port. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain SAN Port Channel Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
