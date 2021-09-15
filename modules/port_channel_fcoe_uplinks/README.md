# port_channel_fcoe_uplinks - Intersight Port Policy - Port Channels - Ethernet Uplink Terraform Module

## Usage

```hcl
module "port_channel_fcoe_uplinks" {

  source = "terraform-cisco-modules/imm/intersight//modules/port_channel_fcoe_uplinks"

  # omitted...
}
```

This module will Configure FCoE Port-Channel Port Roles in a Port Policy.

These resources are consumed

* [Port-Channel Ethernet Uplink](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fcoe_uplink_pc_role)

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
| [intersight_fabric_fcoe_uplink_pc_role.port_channel](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_fcoe_uplink_pc_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_speed"></a> [admin\_speed](#input\_admin\_speed) | Admin configured speed for the port.<br>* Auto - Admin configurable speed Auto.<br>* 1Gbps - Admin configurable speed 1Gbps.<br>* 10Gbps - Admin configurable speed 10Gbps.<br>* 25Gbps - Admin configurable speed 25Gbps.<br>* 40Gbps - Admin configurable speed 40Gbps.<br>* 100Gbps - Admin configurable speed 100Gbps. | `string` | `"Auto"` | no |
| <a name="input_interfaces"></a> [interfaces](#input\_interfaces) | List of Ports to Assign to the LAN Port-Channel Policy. | <pre>list(object(<br>    {<br>      breakout_port_id = optional(number)<br>      port_id          = number<br>      slot_id          = number<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_link_aggregation_policy_moid"></a> [link\_aggregation\_policy\_moid](#input\_link\_aggregation\_policy\_moid) | A reference to a fabricLinkAggregationPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_link_control_policy_moid"></a> [link\_control\_policy\_moid](#input\_link\_control\_policy\_moid) | A reference to a fabricLinkControlPolicy resource. | `set(string)` | `[]` | no |
| <a name="input_pc_id"></a> [pc\_id](#input\_pc\_id) | Unique Identifier of the port-channel, local to this switch. | `string` | `49` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain LAN Port Channel Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
