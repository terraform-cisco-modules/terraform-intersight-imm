# port_modes - Intersight UCS Domain Port Policy - Port Mode Terraform Module

## Usage

```hcl
module "port_modes" {

  source = "terraform-cisco-modules/imm/intersight//modules/port_modes"

  # omitted...
}
```

This module will Configure the Port Modes for a Port Policy in Intersight.

These resources are consumed

* [Port Modes](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_port_mode)

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
| [intersight_fabric_port_mode.port_mode](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_port_mode) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_mode"></a> [custom\_mode](#input\_custom\_mode) | Custom Port Mode specified for the port range.<br>* FibreChannel - Fibre Channel Port Types.<br>* BreakoutEthernet10G - Breakout Ethernet 10G Port Type.<br>* BreakoutEthernet25G - Breakout Ethernet 25G Port Type. | `string` | `"FibreChannel"` | no |
| <a name="input_port_list"></a> [port\_list](#input\_port\_list) | List of Ports to Change the default Port Mode. | `list(number)` | <pre>[<br>  1,<br>  4<br>]</pre> | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the switch. | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | Intersight Port Policy > Mode Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
