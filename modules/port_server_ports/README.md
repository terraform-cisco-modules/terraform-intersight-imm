# port_server_ports - Intersight UCS Domain Port Policy - Server Ports Terraform Module

## Usage

```hcl
module "server_ports" {

  source = "terraform-cisco-modules/imm/intersight//modules/port_server_ports"

  # omitted...
}
```

This module will Configure Server Ports in a UCS Domain Port Policy.

These resources are consumed

* [Server Ports](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_server_role)

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
| [intersight_fabric_server_role.server_port](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_server_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_breakout_sw_port"></a> [breakout\_sw\_port](#input\_breakout\_sw\_port) | Breakout port Identifier of the Switch Interface.  When a port is not configured as a breakout port, the aggregatePortId is set to 0, and unused.  When a port is configured as a breakout port, the 'aggregatePortId' port number as labeled on the equipment, e.g. the id of the port on the switch. | `number` | `0` | no |
| <a name="input_port_list"></a> [port\_list](#input\_port\_list) | List of Ports to assign to the Server Port Policy. | `string` | `"5-18"` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the Switch/FEX/Chassis Interface. | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain Port Policy - Server Ports Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
