# port_role_fc_uplinks - Intersight Port Policy - Port Role - Fibre-Channel Uplink Terraform Module

## Usage

```hcl
module "port_role_fc_uplinks" {

  source = "terraform-cisco-modules/imm/intersight//modules/port_role_fc_uplinks"

  # omitted...
}
```

This module will Configure Fibre-Channel Uplink Port Roles in a Port Policy.

These resources are consumed

* [FC Uplinks](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_san_uplink_policy)

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
| [intersight_fabric_fc_uplink_role.port_role](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fc_uplink_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_speed"></a> [admin\_speed](#input\_admin\_speed) | Admin configured speed for the port.<br>* Auto - Admin configurable speed AUTO ( default ).<br>* 8Gbps - Admin configurable speed 8Gbps.<br>* 16Gbps - Admin configurable speed 16Gbps.<br>* 32Gbps - Admin configurable speed 32Gbps. | `string` | `"16Gbps"` | no |
| <a name="input_breakout_port_id"></a> [breakout\_port\_id](#input\_breakout\_port\_id) | Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch. | `number` | `0` | no |
| <a name="input_fill_pattern"></a> [fill\_pattern](#input\_fill\_pattern) | Fill pattern to differentiate the configs in NPIV.<br>* Arbff - Fc Fill Pattern type Arbff.<br>* Idle - Fc Fill Pattern type Idle. | `string` | `"Idle"` | no |
| <a name="input_port_list"></a> [port\_list](#input\_port\_list) | String of Ports to assign to the Port Policy. | `string` | `""` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the Switch/FEX/Chassis Interface. | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vsan_id"></a> [vsan\_id](#input\_vsan\_id) | Virtual San Identifier associated to the FC port. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Port Role - Fibre-Channel Uplink Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
