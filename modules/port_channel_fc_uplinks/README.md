# port_channel_fc_uplinks - Intersight Port Policy - Port Channels - Fibre Channel Uplink Terraform Module

## Usage

```hcl
module "port_channel_fc_uplinks" {

  source = "terraform-cisco-modules/imm/intersight//modules/port_channel_fc_uplinks"

  # omitted...
}
```

This module will Configure Fibre Channel Port Channel Port Roles in a Port Policy.

These resources are consumed

* [Port-Channel FC Uplink](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/fabric_uplink_pc_role)

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
| <a name="input_admin_speed"></a> [admin\_speed](#input\_admin\_speed) | Admin configured speed for the port.<br>* Auto - Admin configurable speed AUTO.<br>* 8Gbps - Admin configurable speed 8Gbps.<br>* 16Gbps - (default).  Admin configurable speed 16Gbps.<br>* 32Gbps - Admin configurable speed 32Gbps. | `string` | `"16Gbps"` | no |
| <a name="input_fill_pattern"></a> [fill\_pattern](#input\_fill\_pattern) | Fill pattern to differentiate the configs in NPIV.<br>* Arbff - Fc Fill Pattern type Arbff.<br>* Idle - Fc Fill Pattern type Idle. | `string` | `"Idle"` | no |
| <a name="input_interfaces"></a> [interfaces](#input\_interfaces) | List of Ports to Assign to the LAN Port-Channel Policy. | <pre>list(object(<br>    {<br>      breakout_port_id = optional(number)<br>      port_id          = number<br>      slot_id          = number<br>    }<br>  ))</pre> | `[]` | no |
| <a name="input_pc_id"></a> [pc\_id](#input\_pc\_id) | Unique Identifier of the port-channel, local to this switch. | `number` | `1` | no |
| <a name="input_port_policy_moid"></a> [port\_policy\_moid](#input\_port\_policy\_moid) | A reference to a fabricPortPolicy resource. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | List of Tag Attributes to Assign to the Policy. | `list(map(string))` | `[]` | no |
| <a name="input_vsan_id"></a> [vsan\_id](#input\_vsan\_id) | Virtual San Identifier associated to the FC port. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_moid"></a> [moid](#output\_moid) | UCS Domain SAN Port Channel Policy Managed Object ID (moid). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
