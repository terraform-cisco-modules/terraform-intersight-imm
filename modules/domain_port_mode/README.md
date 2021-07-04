# domain_port_mode - Intersight UCS Domain Port Mode Policy Terraform Module

## Usage

```hcl
module "domain_port_mode" {

  source = "terraform-cisco-modules/imm/intersight//modules/domain_port_mode"

  # omitted...
}
```

This module will create a UCS Domain Port Mode Policy in Intersight.  This can be used to Assign Port Modes to a UCS Domain Port Policy.  

These resources are consumed

* [domain_port_mode](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_port_mode)

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
| <a name="input_custom_mode"></a> [custom\_mode](#input\_custom\_mode) | Custom Port Mode specified for the port range.<br> * FibreChannel - Fibre Channel Port Types.<br> * BreakoutEthernet10G - Breakout Ethernet 10G Port Type.<br> * BreakoutEthernet25G - Breakout Ethernet 25G Port Type. | `string` | `"FibreChannel"` | no |
| <a name="input_port_id_end"></a> [port\_id\_end](#input\_port\_id\_end) | Ending range of the Port Identifier. | `number` | `4` | no |
| <a name="input_port_id_start"></a> [port\_id\_start](#input\_port\_id\_start) | Starting range of the Port Identifier. | `number` | `1` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_slot_id"></a> [slot\_id](#input\_slot\_id) | Slot Identifier of the switch. | `number` | `1` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain Port Mode Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
